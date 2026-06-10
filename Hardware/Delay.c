#include "Delay.h"
#include "ti/driverlib/dl_gpio.h"
#include "ti_msp_dl_config.h"
#include <ti/driverlib/m0p/dl_core.h>

void delay_ms(int ms) {
  while (ms--) {
    delay_cycles(80000);
  }
}

void delay_us(int us) {
  while (us--) {
    delay_cycles(80);
  }
}