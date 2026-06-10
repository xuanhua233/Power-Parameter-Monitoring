#ifndef EASY_FFT_H
#define EASY_FFT_H

#define ADC_R 0x0FFF

#include "arm_math.h"
#include "arm_const_structs.h"

typedef struct {
    uint32_t sample_rate;
    float32_t fft_iobuffer[4096*2];
    float32_t fft_mag[4096];
    float32_t fft_phase[4096];
    float32_t fft_freq[4096];
    float32_t fft_max_mag;
    float32_t fft_max_phase;
    uint32_t fft_max_index;
    float32_t fft_max_freq;
} easy_fft_4096_t;

typedef struct {
    uint32_t sample_rate;
    float32_t fft_iobuffer[2048*2];
    float32_t fft_mag[2048];
    float32_t fft_phase[2048];
    float32_t fft_freq[2048];
    float32_t fft_max_mag;
    float32_t fft_max_phase;
    uint32_t fft_max_index;
    float32_t fft_max_freq;
} easy_fft_2048_t;

typedef struct {
    uint32_t sample_rate;
    float32_t fft_iobuffer[1024*2];
    float32_t fft_mag[1024];
    float32_t fft_phase[1024];
    float32_t fft_freq[1024];
    float32_t fft_max_mag;//最大幅值
    float32_t fft_max_phase;//最大幅值的相位
    uint32_t fft_max_index;//最大幅值的索引
    float32_t fft_max_freq;//最大频率
} easy_fft_1024_t;

typedef struct {
    uint32_t sample_rate;
    float32_t fft_iobuffer[512*2];
    float32_t fft_mag[512];
    float32_t fft_phase[512];
    float32_t fft_freq[512];
    float32_t fft_max_mag;
    float32_t fft_max_phase;
    uint32_t fft_max_index;
    float32_t fft_max_freq;
} easy_fft_512_t;

typedef struct {
    uint32_t sample_rate;
    float32_t fft_iobuffer[256*2];
    float32_t fft_mag[256];
    float32_t fft_phase[256];
    float32_t fft_freq[256];
    float32_t fft_max_mag;
    float32_t fft_max_phase;
    uint32_t fft_max_index;
    float32_t fft_max_freq;
} easy_fft_256_t;

typedef struct {
    uint32_t sample_rate;
    float32_t fft_iobuffer[128*2];
    float32_t fft_mag[128];
    float32_t fft_phase[128];
    float32_t fft_freq[128];
    float32_t fft_max_mag;
    float32_t fft_max_phase;
    uint32_t fft_max_index;
    float32_t fft_max_freq;
} easy_fft_128_t;


void easy_fft_process_4096_without_dc(uint16_t *adc_buffer, uint32_t sample_rate, easy_fft_4096_t *fft_data, float32_t factor);
void easy_fft_process_2048_without_dc(uint16_t *adc_buffer, uint32_t sample_rate, easy_fft_2048_t *fft_data, float32_t factor);
void easy_fft_process_1024_without_dc(uint16_t *adc_buffer, uint32_t sample_rate, easy_fft_1024_t *fft_data, float32_t factor);
void easy_fft_process_512_without_dc(uint16_t *adc_buffer, uint32_t sample_rate, easy_fft_512_t *fft_data, float32_t factor);
void easy_fft_process_256_without_dc(uint16_t *adc_buffer, uint32_t sample_rate, easy_fft_256_t *fft_data, float32_t factor);
void easy_fft_process_128_without_dc(uint16_t *adc_buffer, uint32_t sample_rate, easy_fft_128_t *fft_data, float32_t factor);

#endif