################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_i2c.c 

OBJS += \
./Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_i2c.o 

C_DEPS += \
./Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_i2c.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F7xx_HAL_Driver/Inc/%.o Drivers/STM32F7xx_HAL_Driver/Inc/%.su: ../Drivers/STM32F7xx_HAL_Driver/Inc/%.c Drivers/STM32F7xx_HAL_Driver/Inc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F756xx -DUSE_HAL_DRIVER -c -I../Inc -I"D:/STM32F7-HAL/1_Gpio_Input_output/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/STM32F7-HAL/1_Gpio_Input_output/Drivers/CMSIS/Include" -I"D:/STM32F7-HAL/1_Gpio_Input_output/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"D:/STM32F7-HAL/1_Gpio_Input_output/Drivers/STM32F7xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-STM32F7xx_HAL_Driver-2f-Inc

clean-Drivers-2f-STM32F7xx_HAL_Driver-2f-Inc:
	-$(RM) ./Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_i2c.d ./Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_i2c.o ./Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_i2c.su

.PHONY: clean-Drivers-2f-STM32F7xx_HAL_Driver-2f-Inc

