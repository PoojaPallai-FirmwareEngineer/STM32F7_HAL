#include "stm32f7xx_hal.h"

#define BTN_PORT     GPIOC
#define BTN_PIN      GPIO_PIN_13

#define LED1_PORT   GPIOB
#define LED1_PIN    GPIO_PIN_7  // Blue Color
#define LED2_PORT   GPIOB
#define LED2_PIN    GPIO_PIN_14 // Red Color
#define LED3_PORT   GPIOB
#define LED3_PIN    GPIO_PIN_0 // Green Color

void pc13_btn_init(void);
void pb7_led_init(void);

uint8_t buttonstatus;

int main(void)
{
    HAL_Init();
    pc13_btn_init();
    pb7_led_init();

    while(1)
    {
        // Read button state (active-low)
        buttonstatus = HAL_GPIO_ReadPin(BTN_PORT, BTN_PIN);

        // LED ON when pressed, OFF when released
        HAL_GPIO_WritePin (LED1_PORT,LED1_PIN,buttonstatus);
        HAL_GPIO_WritePin (LED2_PORT,LED2_PIN,buttonstatus);
        HAL_GPIO_WritePin (LED3_PORT,LED3_PIN,buttonstatus);

        HAL_Delay(50);  // Debounce and visible LED delay
    }
}

void pc13_btn_init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    __HAL_RCC_GPIOC_CLK_ENABLE();

    GPIO_InitStruct.Pin = BTN_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    GPIO_InitStruct.Pull = GPIO_NOPULL; // external pull-up on Nucleo
    HAL_GPIO_Init(BTN_PORT, &GPIO_InitStruct);
}

void pb7_led_init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    __HAL_RCC_GPIOB_CLK_ENABLE();

    // LED: Blue color
    GPIO_InitStruct.Pin = LED1_PIN;
    HAL_GPIO_Init(LED1_PORT, &GPIO_InitStruct);

    // LED: Red Color
    GPIO_InitStruct.Pin = LED2_PIN;
    HAL_GPIO_Init(LED2_PORT, &GPIO_InitStruct);

    // LED: Green Color
    GPIO_InitStruct.Pin = LED3_PIN;
    HAL_GPIO_Init(LED3_PORT, &GPIO_InitStruct);

}

// Minimal SysTick handler
void SysTick_Handler(void)
{
    HAL_IncTick();
}
