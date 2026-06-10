################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/WindowFunctions.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_bartlett_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_bartlett_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_blackman_harris_92db_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_blackman_harris_92db_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hamming_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hamming_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hanning_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hanning_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft116d_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft116d_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft144d_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft144d_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft169d_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft169d_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft196d_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft196d_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft223d_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft223d_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft248d_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft248d_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft90d_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft90d_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft95_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft95_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3a_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3a_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3b_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3b_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4a_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4a_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4b_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4b_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4c_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4c_f64.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_welch_f32.c \
../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_welch_f64.c 

C_DEPS += \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/WindowFunctions.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_bartlett_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_bartlett_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_blackman_harris_92db_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_blackman_harris_92db_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hamming_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hamming_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hanning_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hanning_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft116d_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft116d_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft144d_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft144d_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft169d_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft169d_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft196d_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft196d_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft223d_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft223d_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft248d_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft248d_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft90d_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft90d_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft95_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft95_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3a_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3a_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3b_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3b_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4a_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4a_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4b_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4b_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4c_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4c_f64.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_welch_f32.d \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_welch_f64.d 

OBJS += \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/WindowFunctions.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_bartlett_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_bartlett_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_blackman_harris_92db_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_blackman_harris_92db_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hamming_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hamming_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hanning_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hanning_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft116d_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft116d_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft144d_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft144d_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft169d_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft169d_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft196d_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft196d_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft223d_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft223d_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft248d_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft248d_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft90d_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft90d_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft95_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft95_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3a_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3a_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3b_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3b_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4a_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4a_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4b_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4b_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4c_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4c_f64.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_welch_f32.o \
./CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_welch_f64.o 

OBJS__QUOTED += \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\WindowFunctions.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_bartlett_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_bartlett_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_blackman_harris_92db_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_blackman_harris_92db_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hamming_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hamming_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hanning_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hanning_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft116d_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft116d_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft144d_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft144d_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft169d_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft169d_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft196d_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft196d_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft223d_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft223d_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft248d_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft248d_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft90d_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft90d_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft95_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft95_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall3_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall3_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall3a_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall3a_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall3b_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall3b_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4a_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4a_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4b_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4b_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4c_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4c_f64.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_welch_f32.o" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_welch_f64.o" 

C_DEPS__QUOTED += \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\WindowFunctions.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_bartlett_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_bartlett_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_blackman_harris_92db_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_blackman_harris_92db_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hamming_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hamming_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hanning_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hanning_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft116d_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft116d_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft144d_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft144d_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft169d_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft169d_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft196d_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft196d_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft223d_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft223d_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft248d_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft248d_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft90d_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft90d_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft95_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_hft95_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall3_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall3_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall3a_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall3a_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall3b_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall3b_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4a_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4a_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4b_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4b_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4c_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_nuttall4c_f64.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_welch_f32.d" \
"CMSIS-DSP.1.16.1\Source\WindowFunctions\arm_welch_f64.d" 

C_SRCS__QUOTED += \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/WindowFunctions.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_bartlett_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_bartlett_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_blackman_harris_92db_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_blackman_harris_92db_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hamming_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hamming_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hanning_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hanning_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft116d_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft116d_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft144d_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft144d_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft169d_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft169d_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft196d_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft196d_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft223d_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft223d_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft248d_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft248d_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft90d_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft90d_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft95_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_hft95_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3a_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3a_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3b_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall3b_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4a_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4a_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4b_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4b_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4c_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_nuttall4c_f64.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_welch_f32.c" \
"../CMSIS-DSP.1.16.1/Source/WindowFunctions/arm_welch_f64.c" 


