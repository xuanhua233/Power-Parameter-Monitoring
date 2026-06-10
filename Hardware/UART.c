#include "UART.h"
#include <ti/driverlib/dl_uart_extend.h>
#include <ti/driverlib/dl_uart_main.h>
#include "ti_msp_dl_config.h"
 uint16_t gEchoData;
 char tjcstr[100];
 uint8_t mode;
 float zs;
void UART_Init(void)
{
  NVIC_ClearPendingIRQ(UART0_INT_IRQn);
  NVIC_EnableIRQ(UART0_INT_IRQn);
}

void HMISends()		//串口屏通讯
{
	uint8_t i=0;
	while(1){
		if(tjcstr[i]!=0){
            delay_cycles(160000);
			DL_UART_Main_transmitData(UART_0_INST,tjcstr[i]);  //发送一个字节
		 	i++;
		}
		else{return ;}
	}
}
void HMISendb(uint8_t k)
{
	uint8_t i;
	 for(i=0; i<3; i++){
			if(k != 0){DL_UART_Main_transmitData(UART_0_INST,k); delay_cycles(160000);} //发送一个字节
			else{return ;}
	 }
} 
void UART_0_INST_IRQHandler(void)
{
    switch (DL_UART_Main_getPendingInterrupt(UART_0_INST)) {
        case DL_UART_MAIN_IIDX_RX:
        
        gEchoData=DL_UART_Main_receiveData(UART_0_INST);
        if(gEchoData>'0'&&gEchoData<='9'){zs=gEchoData-48;}
    
            break;
        default:
            break;
    }
}
