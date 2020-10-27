set -x

rm -f *.su *.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_cortex.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_dma.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma_ex.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_dma_ex.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_exti.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_exti.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_flash.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_flash_ex.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ramfunc.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_flash_ramfunc.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_gpio.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_pwr.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr_ex.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_pwr_ex.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_rcc.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_rcc_ex.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_tim_ex.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_tim.o

arm-none-eabi-gcc ../Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_uart.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_uart.o

# assembly for startup
arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o startup_stm32f401retx.o ../Core/Startup/startup_stm32f401retx.s

# main and core sources
arm-none-eabi-gcc ../Core/Src/main.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o main.o

# device core files
arm-none-eabi-gcc ../Core/Src/stm32f4xx_hal_msp.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_hal_msp.o

arm-none-eabi-gcc ../Core/Src/stm32f4xx_it.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o stm32f4xx_it.o

arm-none-eabi-gcc ../Core/Src/syscalls.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o syscalls.o

arm-none-eabi-gcc ../Core/Src/sysmem.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o sysmem.o

arm-none-eabi-gcc ../Core/Src/system_stm32f4xx.c \
    -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -O0 -c \
    -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include \
    -ffunction-sections -fdata-sections -Wall -fstack-usage \
    --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb \
    -o system_stm32f4xx.o

# generate ELF file
arm-none-eabi-gcc -o blink.elf \
    main.o sysmem.o system_stm32f4xx.o syscalls.o stm32f4xx_it.o startup_stm32f401retx.o \
    stm32f4xx_hal*.o \
  -mcpu=cortex-m4 -T/home/ubuntu/nucleo-f401re-blink/STM32F401RETX_FLASH.ld \
  --specs=nosys.specs -Wl,-Map="nucleo-f401re-blink.map" -Wl,--gc-sections \
  -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group

# dump the ELF file for reference
arm-none-eabi-size blink.elf

# now make a BIN file
arm-none-eabi-objcopy -O binary  blink.elf  blink.bin
