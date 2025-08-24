#include "stm32f7xx_hal.h"

#define BTN_PORT     GPIOC
#define BTN_PIN      GPIO_PIN_13

#define LED_PORT     GPIOB
#define LED_PIN      GPIO_PIN_7

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
        // Method 1
        // HAL_GPIO_WritePin(LED_PORT, LED_PIN, (buttonstatus == GPIO_PIN_RESET) ? GPIO_PIN_RESET : GPIO_PIN_SET);

        // Method 2
        HAL_GPIO_WritePin (LED_PORT,LED_PIN,buttonstatus);

        HAL_Delay(50);  // Debounce and visible LED delay
    }
}

void pc13_btn_init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    __HAL_RCC_GPIOC_CLK_ENABLE();

    GPIO_InitStruct.Pin = BTN_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(BTN_PORT, &GPIO_InitStruct);
}

void pb7_led_init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    __HAL_RCC_GPIOB_CLK_ENABLE();

    // LED: Blue color
    GPIO_InitStruct.Pin = LED_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(LED_PORT, &GPIO_InitStruct);
}

// Minimal SysTick handler
void SysTick_Handler(void)
{
    HAL_IncTick();
}
