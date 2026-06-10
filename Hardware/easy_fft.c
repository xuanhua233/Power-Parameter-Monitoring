#include "easy_fft.h"

void easy_fft_process_4096_without_dc(uint16_t *adc_buffer, uint32_t sample_rate, easy_fft_4096_t *fft_data, float32_t factor)
{
    fft_data->sample_rate = sample_rate;
    for (size_t i = 0; i < 4096; i++)
    {
        fft_data->fft_iobuffer[i*2] = factor*adc_buffer[i]/ADC_R;
        fft_data->fft_iobuffer[i*2+1] = 0;
    }
    arm_cfft_f32(&arm_cfft_sR_f32_len4096, fft_data->fft_iobuffer, 0, 1);
    arm_cmplx_mag_f32(fft_data->fft_iobuffer, fft_data->fft_mag, 4096);

    // fft_data->fft_mag[0] /= (FFT_LENGTH);
	fft_data->fft_mag[0] = 0;   // 去除直流分量
    for (size_t i = 1; i < 4096; i++)
    {
        fft_data->fft_mag[i] /= (4096/2);
    }

    // 频率计算
    for (size_t i = 0; i < 4096; i++)
    {
        fft_data->fft_freq[i] = (float32_t)i * (float32_t)sample_rate / 4096;
    }

    // 相位计算
    for (size_t i = 0; i < 4096; i++)
    {
		//arm_atan2_f32(fft_data->fft_iobuffer[i*2+1], fft_data->fft_iobuffer[i*2], &fft_data->fft_phase[i]);
        fft_data->fft_phase[i] = (float32_t)atan2(fft_data->fft_iobuffer[i*2+1], fft_data->fft_iobuffer[i*2]);
    }

    // 最大值计算
    arm_max_f32(fft_data->fft_mag, 4096, &fft_data->fft_max_mag, &fft_data->fft_max_index);
    fft_data->fft_max_phase = fft_data->fft_phase[fft_data->fft_max_index];
    fft_data->fft_max_freq = fft_data->fft_freq[fft_data->fft_max_index];
}

void easy_fft_process_2048_without_dc(uint16_t *adc_buffer, uint32_t sample_rate, easy_fft_2048_t *fft_data, float32_t factor)
{
    fft_data->sample_rate = sample_rate;
    for (size_t i = 0; i < 2048; i++)
    {
        fft_data->fft_iobuffer[i*2] = factor*adc_buffer[i]/ADC_R;
        fft_data->fft_iobuffer[i*2+1] = 0;
    }
    arm_cfft_f32(&arm_cfft_sR_f32_len2048, fft_data->fft_iobuffer, 0, 1);
    arm_cmplx_mag_f32(fft_data->fft_iobuffer, fft_data->fft_mag, 2048);

    // fft_data->fft_mag[0] /= (FFT_LENGTH);
	fft_data->fft_mag[0] = 0;   // 去除直流分量
    for (size_t i = 1; i < 2048; i++)
    {
        fft_data->fft_mag[i] /= (2048/2);
    }

    // 频率计算
    for (size_t i = 0; i < 2048; i++)
    {
        fft_data->fft_freq[i] = (float32_t)i * (float32_t)sample_rate / 2048;
    }

    // 相位计算
    for (size_t i = 0; i < 2048; i++)
    {
		//arm_atan2_f32(fft_data->fft_iobuffer[i*2+1], fft_data->fft_iobuffer[i*2], &fft_data->fft_phase[i]);
        fft_data->fft_phase[i] = (float32_t)atan2(fft_data->fft_iobuffer[i*2+1], fft_data->fft_iobuffer[i*2]);
    }

    // 最大值计算
    arm_max_f32(fft_data->fft_mag, 2048, &fft_data->fft_max_mag, &fft_data->fft_max_index);
    fft_data->fft_max_phase = fft_data->fft_phase[fft_data->fft_max_index];
    fft_data->fft_max_freq = fft_data->fft_freq[fft_data->fft_max_index];
}

void easy_fft_process_1024_without_dc(uint16_t *adc_buffer, uint32_t sample_rate, easy_fft_1024_t *fft_data, float32_t factor)
{
    fft_data->sample_rate = sample_rate;
    for (size_t i = 0; i < 1024; i++)
    {
        fft_data->fft_iobuffer[i*2] = factor*adc_buffer[i]/ADC_R;
        fft_data->fft_iobuffer[i*2+1] = 0;
    }
    arm_cfft_f32(&arm_cfft_sR_f32_len1024, fft_data->fft_iobuffer, 0, 1);
    arm_cmplx_mag_f32(fft_data->fft_iobuffer, fft_data->fft_mag, 1024);

    // fft_data->fft_mag[0] /= (FFT_LENGTH);
	fft_data->fft_mag[0] = 0;   // 去除直流分量
    for (size_t i = 1; i < 1024; i++)
    {
        fft_data->fft_mag[i] /= (1024/2);
    }

    // 频率计算
    for (size_t i = 0; i < 1024; i++)
    {
        fft_data->fft_freq[i] = (float32_t)i * (float32_t)sample_rate / 1024;
    }

    // 相位计算
    for (size_t i = 0; i < 1024; i++)
    {
		//arm_atan2_f32(fft_data->fft_iobuffer[i*2+1], fft_data->fft_iobuffer[i*2], &fft_data->fft_phase[i]);
        fft_data->fft_phase[i] = (float32_t)atan2(fft_data->fft_iobuffer[i*2+1], fft_data->fft_iobuffer[i*2]);
    }

    // 最大值计算
    arm_max_f32(fft_data->fft_mag, 1024, &fft_data->fft_max_mag, &fft_data->fft_max_index);
    fft_data->fft_max_phase = fft_data->fft_phase[fft_data->fft_max_index];
    fft_data->fft_max_freq = fft_data->fft_freq[fft_data->fft_max_index];
}

void easy_fft_process_512_without_dc(uint16_t *adc_buffer, uint32_t sample_rate, easy_fft_512_t *fft_data, float32_t factor)
{
    fft_data->sample_rate = sample_rate;
    for (size_t i = 0; i < 512; i++)
    {
        fft_data->fft_iobuffer[i*2] = factor*adc_buffer[i]/ADC_R;
        fft_data->fft_iobuffer[i*2+1] = 0;
    }
    arm_cfft_f32(&arm_cfft_sR_f32_len512, fft_data->fft_iobuffer, 0, 1);
    arm_cmplx_mag_f32(fft_data->fft_iobuffer, fft_data->fft_mag, 512);

    // fft_data->fft_mag[0] /= (FFT_LENGTH);
    fft_data->fft_mag[0] = 0;   // 去除直流分量
    for (size_t i = 1; i < 512; i++)
    {
        fft_data->fft_mag[i] /= (512/2);
    }

    // 频率计算
    for (size_t i = 0; i < 512; i++)
    {
        fft_data->fft_freq[i] = (float32_t)i * (float32_t)sample_rate / 512;
    }

    // 相位计算
    for (size_t i = 0; i < 512; i++)
    {
        //arm_atan2_f32(fft_data->fft_iobuffer[i*2+1], fft_data->fft_iobuffer[i*2], &fft_data->fft_phase[i]);
        fft_data->fft_phase[i] = (float32_t)atan2(fft_data->fft_iobuffer[i*2+1], fft_data->fft_iobuffer[i*2]);
    }

    // 最大值计算
    arm_max_f32(fft_data->fft_mag, 512, &fft_data->fft_max_mag, &fft_data->fft_max_index);
    fft_data->fft_max_phase = fft_data->fft_phase[fft_data->fft_max_index];
    fft_data->fft_max_freq = fft_data->fft_freq[fft_data->fft_max_index];
}

void easy_fft_process_256_without_dc(uint16_t *adc_buffer, uint32_t sample_rate, easy_fft_256_t *fft_data, float32_t factor)
{
    fft_data->sample_rate = sample_rate;
    for (size_t i = 0; i < 256; i++)
    {
        fft_data->fft_iobuffer[i*2] = factor*adc_buffer[i]/ADC_R;
        fft_data->fft_iobuffer[i*2+1] = 0;
    }
    arm_cfft_f32(&arm_cfft_sR_f32_len256, fft_data->fft_iobuffer, 0, 1);
    arm_cmplx_mag_f32(fft_data->fft_iobuffer, fft_data->fft_mag, 256);

    // fft_data->fft_mag[0] /= (FFT_LENGTH);
    fft_data->fft_mag[0] = 0;   // 去除直流分量
    for (size_t i = 1; i < 256; i++)
    {
        fft_data->fft_mag[i] /= (256/2);
    }

    // 频率计算
    for (size_t i = 0; i < 256; i++)
    {
        fft_data->fft_freq[i] = (float32_t)i * (float32_t)sample_rate / 256;
    }

    // 相位计算
    for (size_t i = 0; i < 256; i++)
    {
        //arm_atan2_f32(fft_data->fft_iobuffer[i*2+1], fft_data->fft_iobuffer[i*2], &fft_data->fft_phase[i]);
        fft_data->fft_phase[i] = (float32_t)atan2(fft_data->fft_iobuffer[i*2+1], fft_data->fft_iobuffer[i*2]);
    }

    // 最大值计算
    arm_max_f32(fft_data->fft_mag, 256, &fft_data->fft_max_mag, &fft_data->fft_max_index);
    fft_data->fft_max_phase = fft_data->fft_phase[fft_data->fft_max_index];
    fft_data->fft_max_freq = fft_data->fft_freq[fft_data->fft_max_index];
}

void easy_fft_process_128_without_dc(uint16_t *adc_buffer, uint32_t sample_rate, easy_fft_128_t *fft_data, float32_t factor)
{
    fft_data->sample_rate = sample_rate;
    for (size_t i = 0; i < 128; i++)
    {
        fft_data->fft_iobuffer[i*2] = factor*adc_buffer[i]/ADC_R;
        fft_data->fft_iobuffer[i*2+1] = 0;
    }
    arm_cfft_f32(&arm_cfft_sR_f32_len128, fft_data->fft_iobuffer, 0, 1);
    arm_cmplx_mag_f32(fft_data->fft_iobuffer, fft_data->fft_mag, 128);

    // fft_data->fft_mag[0] /= (FFT_LENGTH);
    fft_data->fft_mag[0] = 0;   // 去除直流分量
    for (size_t i = 1; i < 128; i++)
    {
        fft_data->fft_mag[i] /= (128/2);
    }

    // 频率计算
    for (size_t i = 0; i < 128; i++)
    {
        fft_data->fft_freq[i] = (float32_t)i * (float32_t)sample_rate / 128;
    }

    // 相位计算
    for (size_t i = 0; i < 128; i++)
    {
        //arm_atan2_f32(fft_data->fft_iobuffer[i*2+1], fft_data->fft_iobuffer[i*2], &fft_data->fft_phase[i]);
        fft_data->fft_phase[i] = (float32_t)atan2(fft_data->fft_iobuffer[i*2+1], fft_data->fft_iobuffer[i*2]);
    }

    // 最大值计算
    arm_max_f32(fft_data->fft_mag, 128, &fft_data->fft_max_mag, &fft_data->fft_max_index);
    fft_data->fft_max_phase = fft_data->fft_phase[fft_data->fft_max_index];
    fft_data->fft_max_freq = fft_data->fft_freq[fft_data->fft_max_index];
}


