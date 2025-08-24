# HAL API Reference 

This project uses the **STM32 HAL (Hardware Abstraction Layer)**.  

## General Purpose Input/Output (GPIO) APIs

| **API** | **Description** |
|---------|-----------------|
| `HAL_GPIO_Init(GPIOx, &GPIO_InitStruct)` | Initialize a GPIO pin with mode, pull-up/down, and speed |
| `HAL_GPIO_DeInit(GPIOx, GPIO_Pin)` | De-initialize GPIO pin(s) |
| `HAL_GPIO_ReadPin(GPIOx, GPIO_Pin)` | Read input pin state (`GPIO_PIN_SET` or `GPIO_PIN_RESET`) |
| `HAL_GPIO_WritePin(GPIOx, GPIO_Pin, GPIO_PinState)` | Write `SET` or `RESET` to a pin |
| `HAL_GPIO_TogglePin(GPIOx, GPIO_Pin)` | Toggle the pin state |
| `HAL_GPIO_LockPin(GPIOx, GPIO_Pin)` | Lock the pin configuration until next reset |

===========================================================================

## Reset and Clock Control (RCC) Peripheral Clock Macros

| **Macro** | **Description** |
|-----------|-----------------|
|`__HAL_RCC_GPIOx_CLK_ENABLE()` | Enable clock for **GPIOx** (GPIOA – GPIOK, depending on MCU) |
|`__HAL_RCC_GPIOx_CLK_DISABLE()` | Disable clock for the corresponding **GPIO port** |
|`__HAL_RCC_xxx_CLK_ENABLE()` | Similar macros exist for other peripherals (**USARTx, SPIx, I2Cx, TIMx, ADCx, etc.**) |

===========================================================================

