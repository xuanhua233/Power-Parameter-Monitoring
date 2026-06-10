#include "ADC.h"
#include "ti/driverlib/dl_timerg.h"
#include "ti_msp_dl_config.h"
#include <stdint.h>
#include <ti/driverlib/dl_adc12.h>
#include <ti/driverlib/dl_dma.h>

volatile bool adcflag;
uint16_t adcValue;

void Timer_Clock_Set_ms(uint32_t period_set) {
  // 声明一个临时变量并初始化
  DL_TimerG_TimerConfig tempConfig = {
      .period = period_set * 40000 - 1,
      .timerMode = DL_TIMER_TIMER_MODE_PERIODIC,
      .startTimer = DL_TIMER_STOP,
  };
  // 将临时变量赋值给目标变量
  DL_TimerG_stopCounter(TIMER_0_INST);
  DL_TimerG_initTimerMode(TIMER_0_INST, (DL_TimerG_TimerConfig *)&tempConfig);
}

void Timer_Clock_Set_us(uint32_t period_set) {
  // 声明一个临时变量并初始化
  DL_TimerG_TimerConfig tempConfig = {
      .period = period_set * 40 - 1,
      .timerMode = DL_TIMER_TIMER_MODE_PERIODIC,
      .startTimer = DL_TIMER_STOP,
  };
  // 将临时变量赋值给目标变量
  DL_TimerG_stopCounter(TIMER_0_INST);
  DL_TimerG_initTimerMode(TIMER_0_INST, (DL_TimerG_TimerConfig *)&tempConfig);
}

void Timer_Clock_Set_ns(uint32_t period_set) {
  // 声明一个临时变量并初始化
  DL_TimerG_TimerConfig tempConfig = {
      .period = period_set * 4 / 100 - 1,
      .timerMode = DL_TIMER_TIMER_MODE_PERIODIC,
      .startTimer = DL_TIMER_STOP,
  };
  // 将临时变量赋值给目标变量
  DL_TimerG_stopCounter(TIMER_0_INST);
  DL_TimerG_initTimerMode(TIMER_0_INST, (DL_TimerG_TimerConfig *)&tempConfig);
}

void ADC_Set_Freq(uint32_t frequency) {
  uint32_t period = 40000000 / frequency;
  // 声明一个临时变量并初始化
  DL_TimerG_TimerConfig tempConfig = {
      .period = period -1,
      .timerMode = DL_TIMER_TIMER_MODE_PERIODIC,
      .startTimer = DL_TIMER_STOP,
  };
  // 将临时变量赋值给目标变量
  DL_TimerG_stopCounter(TIMER_0_INST);
  DL_TimerG_initTimerMode(TIMER_0_INST, (DL_TimerG_TimerConfig *)&tempConfig);
}

void ADC0_DMA0_Init(uint16_t *samplesArray, uint16_t ADC_FIFO_SAMPLES) {
  DL_DMA_setSrcAddr(DMA, DMA_CH0_CHAN_ID,(uint32_t)DL_ADC12_getFIFOAddress(ADC12_0_INST));//设置 DMA 源地址
  DL_DMA_setDestAddr(DMA, DMA_CH0_CHAN_ID, (uint32_t)&samplesArray[0]);//设置 DMA 目标地址
  DL_DMA_setTransferSize(DMA, DMA_CH0_CHAN_ID, (ADC_FIFO_SAMPLES >> 1));//设置 DMA 传输数据量
  DL_DMA_enableChannel(DMA, DMA_CH0_CHAN_ID);//启动DMA通道
  NVIC_EnableIRQ(ADC12_0_INST_INT_IRQN);//中断使能

  // DL_ADC12_startConversion(ADC12_0_INST);
}

void ADC1_DMA1_Init(uint16_t *samplesArray, uint16_t ADC_FIFO_SAMPLES) {
  DL_DMA_setSrcAddr(DMA, DMA_CH1_CHAN_ID,(uint32_t)DL_ADC12_getFIFOAddress(ADC12_1_INST));
  DL_DMA_setDestAddr(DMA, DMA_CH1_CHAN_ID, (uint32_t)&samplesArray[0]);
  DL_DMA_setTransferSize(DMA, DMA_CH1_CHAN_ID, (ADC_FIFO_SAMPLES >> 1));
  DL_DMA_enableChannel(DMA, DMA_CH1_CHAN_ID);
  NVIC_EnableIRQ(ADC12_1_INST_INT_IRQN);

  // DL_ADC12_startConversion(ADC12_0_INST);
}

void ADC12_0_INST_IRQHandler(void) {
  switch (DL_ADC12_getPendingInterrupt(ADC12_0_INST)) {
  case DL_ADC12_IIDX_DMA_DONE:
    adcflag = true;
    DL_TimerG_stopCounter(TIMER_0_INST);
    //DL_TimerG_disablePower(TIMER_0_INST);
    DL_ADC12_disablePower(ADC12_0_INST);
    DL_DMA_disableChannel(DMA, DMA_CH0_CHAN_ID);
    break;
  default:
    break;
  }
}

void ADC12_1_INST_IRQHandler(void) {//等待adc采集完成
  switch (DL_ADC12_getPendingInterrupt(ADC12_1_INST)) {
  case DL_ADC12_IIDX_DMA_DONE:
    adcflag = true;
    DL_ADC12_disablePower(ADC12_1_INST);
    //禁用 DMA 通道（CH1 和 CH0）
    DL_DMA_disableChannel(DMA, DMA_CH1_CHAN_ID);
    DL_DMA_disableChannel(DMA, DMA_CH0_CHAN_ID);
    break;
  default:
    break;
  }
}
void Double_ADC_Wait() {
  while (adcflag == false)
    ;
}
void one_ADC0_Start(uint16_t *ADC_Buf0,uint16_t ADC_FIFO_SAMPLES, uint32_t frequency){
    ADC0_DMA0_Init(ADC_Buf0, ADC_FIFO_SAMPLES);
    ADC_Set_Freq(frequency);
    DL_ADC12_enablePower(ADC12_0_INST);
    adcflag = false;
    DL_TimerG_setTimerCount(TIMER_0_INST, 0);//重置定时器
    DL_TimerG_startCounter(TIMER_0_INST);
}
void Double_ADC_Start(uint16_t *ADC_Buf0, uint16_t *ADC_Buf1,uint16_t ADC_FIFO_SAMPLES, uint32_t frequency) {//ADC_FIFO_SAMPLES采样点数，frequency采样率
  ADC0_DMA0_Init(ADC_Buf0, ADC_FIFO_SAMPLES);
  ADC1_DMA1_Init(ADC_Buf1, ADC_FIFO_SAMPLES);
  ADC_Set_Freq(frequency);
  DL_ADC12_enablePower(ADC12_1_INST);
  DL_ADC12_enablePower(ADC12_0_INST);
  adcflag = false;
  DL_TimerG_setTimerCount(TIMER_0_INST, 0);//重置定时器
  DL_TimerG_startCounter(TIMER_0_INST);
}

