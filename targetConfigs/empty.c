#include "ti/driverlib/dl_dma.h"
#include "ti_msp_dl_config.h"
#include "ti/driverlib/m0p/dl_core.h"
#include "LED.h"
#include "UART.h"
#include "ADC.h"
#include "stdio.h"
#include "string.h"
#include <ti/iqmath/include/IQmathLib.h>
#include <stdint.h>
#include <string.h>
#include "fft.h"
#include "Delay.h"
#include "arm_math.h"
#include "PeripheralInit.h"
#include "AD9833.h"
uint16_t ADC_Buff0[2048]={0};
uint16_t ADC_Buff1[1024]={0};
static fft_data_t fft_data_1;
char tjcstr[100];
double F=500e3;
uint16_t a=1;
int main(void)
{
    
    SYSCFG_DL_init();   // 系统初始化
    //AD9833_Init();
    UART_Init();//串口初始化
    fft_init();
    //AD9851_reset1();
    
    //F=F*6;
    //F=F/101*100;
    
    while (1) {
        //AD9851_wr_parrel2(0x00,F);    //开六倍频
        //AD9833_SetFrequencyQuick(2000.0,AD9833_OUT_SINUS);
        //DL_GPIO_setPins(GPIO_LEDS_PORT, GPIO_LEDS_USER_LED_1_PIN);
        
        //Equivalentadc(100000,512);
        //one_ADC0_Start(ADC_Buff0,2048,(uint16_t)50000*0.99);
        // for(int i=0; i<300; i++){
        //     //F=(double)ADC_Buff0[i+500]/4095.0;
        //     F=(double)ADC_Buff0[1500-i]/4095;
        //     //a=ADC_Buff0[i+500];
        //     ADC_Buff1[i] =(uint16_t)(F* 255);
        //     sprintf(tjcstr,"add 7,1,%d\xff\xff\xff",ADC_Buff1[i]);//发送至串口屏显示
        //     HMISends();
        // }
        one_ADC0_Start(ADC_Buff0,1024,2.5e6);
        //Double_ADC_Start(ADC_Buff0,ADC_Buff1,1024,2.5e6);
        Double_ADC_Wait();
        // DL_GPIO_clearPins(GPIO_LEDS_PORT, GPIO_LEDS_USER_LED_1_PIN);
        // for(int i=0;i<1024;i++){
        //     ADC_Buff1[i]=ADC_Buff0[i+500];
        // }
        // for(int i=0;i<2048;i++){
        //     ADC_Buff0[i]=ADC_Buff1[2047-i];
        // }
        // fft_load_window(ADC_Buff0);
        // fft_process(&fft_data_1,50e3);
        __BKPT(0);
    }
}
