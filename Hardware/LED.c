#include "LED.h"
#include "ti/driverlib/dl_gpio.h"
#include "ti_msp_dl_config.h"
void LED_ON()
{
    DL_GPIO_clearPins(GPIOA, DL_GPIO_PIN_0);
}
void LED_OFF()
{
    DL_GPIO_setPins(GPIOA, DL_GPIO_PIN_0);
}