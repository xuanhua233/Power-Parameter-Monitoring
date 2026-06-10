################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/DistanceFunctions.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/DistanceFunctionsF16.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_boolean_distance.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_braycurtis_distance_f16.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_braycurtis_distance_f32.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_canberra_distance_f16.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_canberra_distance_f32.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_chebyshev_distance_f16.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_chebyshev_distance_f32.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_chebyshev_distance_f64.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cityblock_distance_f16.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cityblock_distance_f32.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cityblock_distance_f64.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_correlation_distance_f16.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_correlation_distance_f32.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cosine_distance_f16.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cosine_distance_f32.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cosine_distance_f64.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dice_distance.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dtw_distance_f32.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dtw_init_window_q7.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dtw_path_f32.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_euclidean_distance_f16.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_euclidean_distance_f32.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_euclidean_distance_f64.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_hamming_distance.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_jaccard_distance.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_kulsinski_distance.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_minkowski_distance_f16.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_minkowski_distance_f32.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_rogerstanimoto_distance.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_russellrao_distance.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_sokalmichener_distance.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_sokalsneath_distance.c \
../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_yule_distance.c 

C_DEPS += \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/DistanceFunctions.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/DistanceFunctionsF16.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_boolean_distance.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_braycurtis_distance_f16.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_braycurtis_distance_f32.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_canberra_distance_f16.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_canberra_distance_f32.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_chebyshev_distance_f16.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_chebyshev_distance_f32.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_chebyshev_distance_f64.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cityblock_distance_f16.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cityblock_distance_f32.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cityblock_distance_f64.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_correlation_distance_f16.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_correlation_distance_f32.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cosine_distance_f16.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cosine_distance_f32.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cosine_distance_f64.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dice_distance.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dtw_distance_f32.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dtw_init_window_q7.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dtw_path_f32.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_euclidean_distance_f16.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_euclidean_distance_f32.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_euclidean_distance_f64.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_hamming_distance.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_jaccard_distance.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_kulsinski_distance.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_minkowski_distance_f16.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_minkowski_distance_f32.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_rogerstanimoto_distance.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_russellrao_distance.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_sokalmichener_distance.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_sokalsneath_distance.d \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_yule_distance.d 

OBJS += \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/DistanceFunctions.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/DistanceFunctionsF16.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_boolean_distance.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_braycurtis_distance_f16.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_braycurtis_distance_f32.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_canberra_distance_f16.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_canberra_distance_f32.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_chebyshev_distance_f16.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_chebyshev_distance_f32.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_chebyshev_distance_f64.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cityblock_distance_f16.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cityblock_distance_f32.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cityblock_distance_f64.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_correlation_distance_f16.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_correlation_distance_f32.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cosine_distance_f16.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cosine_distance_f32.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cosine_distance_f64.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dice_distance.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dtw_distance_f32.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dtw_init_window_q7.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dtw_path_f32.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_euclidean_distance_f16.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_euclidean_distance_f32.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_euclidean_distance_f64.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_hamming_distance.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_jaccard_distance.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_kulsinski_distance.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_minkowski_distance_f16.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_minkowski_distance_f32.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_rogerstanimoto_distance.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_russellrao_distance.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_sokalmichener_distance.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_sokalsneath_distance.o \
./CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_yule_distance.o 

OBJS__QUOTED += \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\DistanceFunctions.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\DistanceFunctionsF16.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_boolean_distance.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_braycurtis_distance_f16.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_braycurtis_distance_f32.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_canberra_distance_f16.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_canberra_distance_f32.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_chebyshev_distance_f16.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_chebyshev_distance_f32.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_chebyshev_distance_f64.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_cityblock_distance_f16.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_cityblock_distance_f32.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_cityblock_distance_f64.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_correlation_distance_f16.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_correlation_distance_f32.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_cosine_distance_f16.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_cosine_distance_f32.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_cosine_distance_f64.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_dice_distance.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_dtw_distance_f32.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_dtw_init_window_q7.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_dtw_path_f32.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_euclidean_distance_f16.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_euclidean_distance_f32.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_euclidean_distance_f64.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_hamming_distance.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_jaccard_distance.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_jensenshannon_distance_f16.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_jensenshannon_distance_f32.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_kulsinski_distance.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_minkowski_distance_f16.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_minkowski_distance_f32.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_rogerstanimoto_distance.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_russellrao_distance.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_sokalmichener_distance.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_sokalsneath_distance.o" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_yule_distance.o" 

C_DEPS__QUOTED += \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\DistanceFunctions.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\DistanceFunctionsF16.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_boolean_distance.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_braycurtis_distance_f16.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_braycurtis_distance_f32.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_canberra_distance_f16.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_canberra_distance_f32.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_chebyshev_distance_f16.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_chebyshev_distance_f32.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_chebyshev_distance_f64.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_cityblock_distance_f16.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_cityblock_distance_f32.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_cityblock_distance_f64.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_correlation_distance_f16.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_correlation_distance_f32.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_cosine_distance_f16.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_cosine_distance_f32.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_cosine_distance_f64.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_dice_distance.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_dtw_distance_f32.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_dtw_init_window_q7.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_dtw_path_f32.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_euclidean_distance_f16.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_euclidean_distance_f32.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_euclidean_distance_f64.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_hamming_distance.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_jaccard_distance.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_jensenshannon_distance_f16.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_jensenshannon_distance_f32.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_kulsinski_distance.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_minkowski_distance_f16.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_minkowski_distance_f32.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_rogerstanimoto_distance.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_russellrao_distance.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_sokalmichener_distance.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_sokalsneath_distance.d" \
"CMSIS-DSP.1.16.1\Source\DistanceFunctions\arm_yule_distance.d" 

C_SRCS__QUOTED += \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/DistanceFunctions.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/DistanceFunctionsF16.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_boolean_distance.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_braycurtis_distance_f16.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_braycurtis_distance_f32.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_canberra_distance_f16.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_canberra_distance_f32.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_chebyshev_distance_f16.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_chebyshev_distance_f32.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_chebyshev_distance_f64.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cityblock_distance_f16.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cityblock_distance_f32.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cityblock_distance_f64.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_correlation_distance_f16.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_correlation_distance_f32.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cosine_distance_f16.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cosine_distance_f32.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_cosine_distance_f64.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dice_distance.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dtw_distance_f32.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dtw_init_window_q7.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_dtw_path_f32.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_euclidean_distance_f16.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_euclidean_distance_f32.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_euclidean_distance_f64.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_hamming_distance.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_jaccard_distance.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_kulsinski_distance.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_minkowski_distance_f16.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_minkowski_distance_f32.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_rogerstanimoto_distance.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_russellrao_distance.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_sokalmichener_distance.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_sokalsneath_distance.c" \
"../CMSIS-DSP.1.16.1/Source/DistanceFunctions/arm_yule_distance.c" 


