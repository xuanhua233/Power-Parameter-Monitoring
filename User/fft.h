#ifndef FFT_H
#define FFT_H

#include "arm_math.h"
#include "arm_const_structs.h"


#define ADC_WIDTH 12
#define ADC_RANGE 3.3f

#define FFT_SIZE 1024
#define FFT_PEAK_SCARCH_DEPTH 10

#define ENABLE_AP_FFT 0 // 目前无法使用

typedef struct
{
    float32_t top_freqs[FFT_PEAK_SCARCH_DEPTH];
    float32_t top_mags[FFT_PEAK_SCARCH_DEPTH];
    float32_t top_phases[FFT_PEAK_SCARCH_DEPTH];
} fft_data_t;

void hanning_init(void);
void fft_init();
void fft_load(uint16_t *adc_buffer);
void fft_load_with_hanning(uint16_t *adc_buffer, uint32_t sample_rate);
void fft_process(fft_data_t *fft_data,int a);
void fft_load_window(uint16_t *adc_buffer);
void fft_hunji(fft_data_t *fft_data,int a);
#if ENABLE_AP_FFT == 1
void fft_ap_load(uint16_t *adc_buffer, uint32_t sample_rate);
#endif

#endif // !FFT_H