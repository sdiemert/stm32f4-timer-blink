########################################
# Makefile for an STM32F4xx project that
# uses timers to blink the LED on the Nucleo board.
########################################

########################################
# Define toolchain
########################################
CC=arm-none-eabi-gcc
LD=arm-none-eabi-gcc
SZ=arm-none-eabi-size
CP=arm-none-eabi-objcopy
SF=st-flash

########################################
# Define project specific details
########################################
TARGET=blink
LIB=lib
SRC_DIR=src
INC_DIR=inc
DEV_DIR=device
HAL_SRC=$(LIB)/STM32F4xx_HAL_Driver/Src
HAL_INC=$(LIB)/STM32F4xx_HAL_Driver/Inc

########################################
# Define source files for the project
# 
# All new files added to the project must
# be listed here
# ########################################
SRCS = $(SRC_DIR)/main.c \
	   $(SRC_DIR)/stm32f4xx_it.c \
	   $(SRC_DIR)/stm32f4xx_hal_msp.c \
	   $(SRC_DIR)/syscalls.c \
	   $(SRC_DIR)/sysmem.c \
	   $(SRC_DIR)/system_stm32f4xx.c

ASM_SRCS = $(DEV_DIR)/startup_stm32f401retx.s

OBJ = $(SRCS:.c=.o)
OBJ += $(ASM_SRCS:.s=.o)

########################################
# Define where to look for .h files
########################################
INC_DIRS = $(HAL_INC)/ \
 		   $(LIB)/CMSIS/Device/ST/STM32F4xx/Include/ \
		   $(LIB)/CMSIS/Include/ \
		   $(INC_DIR)/

INCLUDE = $(addprefix -I,$(INC_DIRS))

########################################
# Define HAL source dependencies
########################################
EXT_SRCS = $(HAL_SRC)/stm32f4xx_hal.c \
		   $(HAL_SRC)/stm32f4xx_hal_cortex.c \
		   $(HAL_SRC)/stm32f4xx_hal_dma.c \
		   $(HAL_SRC)/stm32f4xx_hal_dma_ex.c \
		   $(HAL_SRC)/stm32f4xx_hal_exti.c \
		   $(HAL_SRC)/stm32f4xx_hal_flash.c \
		   $(HAL_SRC)/stm32f4xx_hal_flash_ex.c \
		   $(HAL_SRC)/stm32f4xx_hal_flash_ramfunc.c \
		   $(HAL_SRC)/stm32f4xx_hal_gpio.c \
		   $(HAL_SRC)/stm32f4xx_hal_pwr.c \
		   $(HAL_SRC)/stm32f4xx_hal_pwr_ex.c \
		   $(HAL_SRC)/stm32f4xx_hal_rcc.c \
		   $(HAL_SRC)/stm32f4xx_hal_rcc_ex.c \
		   $(HAL_SRC)/stm32f4xx_hal_tim.c \
		   $(HAL_SRC)/stm32f4xx_hal_tim_ex.c \
		   $(HAL_SRC)/stm32f4xx_hal_uart.c

# get the .o files for the HAL sources
OBJ += $(EXT_SRCS:.c=.o)

########################################
# Compiler and Linker Flags
########################################
CFLAGS = -std=gnu11 
CFLAGS += -mcpu=cortex-m4 
CFLAGS += -g3 
CFLAGS += -O0 
CFLAGS += -Wall
CFLAGS += -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG 
CFLAGS += -ffunction-sections 
CFLAGS += -fdata-sections 
CFLAGS += -fstack-usage 
CFLAGS += --specs=nano.specs
CFLAGS += -mfpu=fpv4-sp-d16
CFLAGS += -mfloat-abi=hard
CFLAGS += -mthumb

LSCRIPT = device/STM32F401RETX_FLASH.ld

LFLAGS = -mcpu=cortex-m4
LFLAGS += -T$(LSCRIPT)
LFLAGS += --specs=nosys.specs 
LFLAGS += -Wl,-Map="$(TARGET).map"
LFLAGS += -Wl,--gc-sections
LFLAGS += -static --specs=nano.specs
LFLAGS += -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb
LFLAGS += -Wl,--start-group -lc -lm -Wl,--end-group


########################################
# make recipes
########################################

all: $(TARGET).bin

$(TARGET): $(TARGET).elf

$(TARGET).elf: $(OBJ)
	echo "building $(TARGET).elf"
	$(CC) $(LFLAGS) -o $(TARGET).elf $^
	$(SZ) $(TARGET).elf 

$(TARGET).bin: $(TARGET).elf
	$(CP) -O binary $(TARGET).elf  $(TARGET).bin	

%.o: %.c
	$(CC) -c $(CFLAGS) $(INCLUDE) $^ -o $@ 

%.o: %.s
	$(CC) -c -x assembler-with-cpp \
		-mcpu=cortex-m4 -g3 -c -x assembler-with-cpp \
		--specs=nano.specs -mfpu=fpv4-sp-d16 \
		-mfloat-abi=hard -mthumb $^ -o $@

flash:
	$(SF) write $(TARGET).bin 0x8000000

clean:
	rm -rf *.elf *.bin *.o *.su *.map
	rm -rf $(OBJ)
