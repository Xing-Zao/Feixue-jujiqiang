################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Smart1/S1_main.c \
../Smart1/adc1.c \
../Smart1/battery.c \
../Smart1/uart.c \
../Smart1/ws2812.c 

OBJS += \
./Smart1/S1_main.o \
./Smart1/adc1.o \
./Smart1/battery.o \
./Smart1/uart.o \
./Smart1/ws2812.o 

C_DEPS += \
./Smart1/S1_main.d \
./Smart1/adc1.d \
./Smart1/battery.d \
./Smart1/uart.d \
./Smart1/ws2812.d 


# Each subdirectory must supply rules for building sources it contributes
Smart1/S1_main.o: ../Smart1/S1_main.c Smart1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g -DUSE_HAL_DRIVER -DDEBUG -DSTM32G031xx -c -I../Core/Inc -I"C:/Users/23714/Desktop/jujiqiang/01_Firmware/01_source/01_new_source/jujiqiang-battery-V1.0.0/Smart1" -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Smart1/S1_main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Smart1/adc1.o: ../Smart1/adc1.c Smart1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g -DUSE_HAL_DRIVER -DDEBUG -DSTM32G031xx -c -I../Core/Inc -I"C:/Users/23714/Desktop/jujiqiang/01_Firmware/01_source/01_new_source/jujiqiang-battery-V1.0.0/Smart1" -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Smart1/adc1.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Smart1/battery.o: ../Smart1/battery.c Smart1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g -DUSE_HAL_DRIVER -DDEBUG -DSTM32G031xx -c -I../Core/Inc -I"C:/Users/23714/Desktop/jujiqiang/01_Firmware/01_source/01_new_source/jujiqiang-battery-V1.0.0/Smart1" -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Smart1/battery.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Smart1/uart.o: ../Smart1/uart.c Smart1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g -DUSE_HAL_DRIVER -DDEBUG -DSTM32G031xx -c -I../Core/Inc -I"C:/Users/23714/Desktop/jujiqiang/01_Firmware/01_source/01_new_source/jujiqiang-battery-V1.0.0/Smart1" -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Smart1/uart.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Smart1/ws2812.o: ../Smart1/ws2812.c Smart1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g -DUSE_HAL_DRIVER -DDEBUG -DSTM32G031xx -c -I../Core/Inc -I"C:/Users/23714/Desktop/jujiqiang/01_Firmware/01_source/01_new_source/jujiqiang-battery-V1.0.0/Smart1" -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Smart1/ws2812.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

