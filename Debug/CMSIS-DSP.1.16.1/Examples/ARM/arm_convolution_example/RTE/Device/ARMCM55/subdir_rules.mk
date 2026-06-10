################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP.1.16.1/Examples/ARM/arm_convolution_example/RTE/Device/ARMCM55/%.o: ../CMSIS-DSP.1.16.1/Examples/ARM/arm_convolution_example/RTE/Device/ARMCM55/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccstheia141/ccs/tools/compiler/ti-cgt-armllvm_3.2.2.LTS/bin/tiarmclang.exe" -c @"device.opt"  -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O0 -I"C:/Users/Whisp/OneDrive/Develop/MSPM0/Test1" -I"C:/Users/Whisp/OneDrive/Develop/MSPM0/Test1/Debug" -I"C:/ti/mspm0_sdk_2_01_00_03/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_2_01_00_03/source" -I"C:/Users/Whisp/OneDrive/Develop/MSPM0/Test1/Hardware" -I"C:/Users/Whisp/OneDrive/Develop/MSPM0/Test1/User" -I"C:/Users/Whisp/OneDrive/Develop/MSPM0/Test1/CMSIS-DSP.1.16.1/Include" -DARM_MATH_CM0 -gdwarf-3 -MMD -MP -MF"CMSIS-DSP.1.16.1/Examples/ARM/arm_convolution_example/RTE/Device/ARMCM55/$(basename $(<F)).d_raw" -MT"$(@)"  @"./device.opt" -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


