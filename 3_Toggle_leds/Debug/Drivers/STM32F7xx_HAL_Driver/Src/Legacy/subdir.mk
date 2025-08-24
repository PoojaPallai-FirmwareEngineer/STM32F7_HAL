################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32F7xx_HAL_Driver/Src/Legacy/stm32f7xx_hal_can.c \
../Drivers/STM32F7xx_HAL_Driver/Src/Legacy/stm32f7xx_hal_eth.c 

OBJS += \
./Drivers/STM32F7xx_HAL_Driver/Src/Legacy/stm32f7xx_hal_can.o \
./Drivers/STM32F7xx_HAL_Driver/Src/Legacy/stm32f7xx_hal_eth.o 

C_DEPS += \
./Drivers/STM32F7xx_HAL_Driver/Src/Legacy/stm32f7xx_hal_can.d \
./Drivers/STM32F7xx_HAL_Driver/Src/Legacy/stm32f7xx_hal_eth.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F7xx_HAL_Driver/Src/Legacy/%.o Drivers/STM32F7xx_HAL_Driver/Src/Legacy/%.su: ../Drivers/STM32F7xx_HAL_Driver/Src/Legacy/%.c Drivers/STM32F7xx_HAL_Driver/Src/Legacy/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F756xx -DUSE_HAL_DRIVER -c -I../Inc -I"D:/STM32F7-HAL/1_Gpio_Input_output/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/STM32F7-HAL/1_Gpio_Input_output/Drivers/CMSIS/Include" -I"D:/STM32F7-HAL/1_Gpio_Input_output/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"D:/STM32F7-HAL/1_Gpio_Input_output/Drivers/STM32F7xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-STM32F7xx_HAL_Driver-2f-Src-2f-Legacy

clean-Drivers-2f-STM32F7xx_HAL_Driver-2f-Src-2f-Legacy:
	-$(RM) ./Drivers/STM32F7xx_HAL_Driver/Src/Legacy/stm32f7xx_hal_can.d ./Drivers/STM32F7xx_HAL_Driver/Src/Legacy/stm32f7xx_hal_can.o ./Drivers/STM32F7xx_HAL_Driver/Src/Legacy/stm32f7xx_hal_can.su ./Drivers/STM32F7xx_HAL_Driver/Src/Legacy/stm32f7xx_hal_eth.d ./Drivers/STM32F7xx_HAL_Driver/Src/Legacy/stm32f7xx_hal_eth.o ./Drivers/STM32F7xx_HAL_Driver/Src/Legacy/stm32f7xx_hal_eth.su

.PHONY: clean-Drivers-2f-STM32F7xx_HAL_Driver-2f-Src-2f-Legacy

