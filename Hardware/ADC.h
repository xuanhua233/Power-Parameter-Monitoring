#ifndef __ADC_H
#define __ADC_H
#include <stdint.h>
/*
    ADC0_DMA0  PA25 电压
    ADC1_DMA1  PA15电流
*/



// void Timer_Clock_Set_ms(uint32_t period_set);
// void Timer_Clock_Set_us(uint32_t period_set);
// void Timer_Clock_Set_ns(uint32_t period_set);
// void ADC1_DMA1_Init(uint16_t *samplesArray,uint16_t ADC_FIFO_SAMPLES);
// void ADC0_DMA0_Init(uint16_t *samplesArray,uint16_t ADC_FIFO_SAMPLES);
void Double_ADC_Start(uint16_t*ADC_Buf0,uint16_t*ADC_Buf1,uint16_t ADC_FIFO_SAMPLES,uint32_t frequency);
void Double_ADC_Wait();
void Equivalentadc(uint32_t Equivalent_Frequency,uint16_t SamplingNum);
void one_ADC0_Start(uint16_t *ADC_Buf0,uint16_t ADC_FIFO_SAMPLES, uint32_t frequency);
//void ADC_Set_Freq(uint32_t frequency);
#endif