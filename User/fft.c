#include "fft.h"
#include "UART.h"
#include "stdio.h"
#include <math.h> // 用于窗函数计算
#include "arm_math.h"
//static arm_cfft_instance_f32 S;

//float32_t twiddleFactors[2000];  // 1000点复数旋转因子（实+虚）
//uint16_t bitRevTable[1000];      // 位反转表

// 汉宁窗生成函数（需提前计算并存储）
void generate_hanning_window(float32_t *window, uint32_t size) {
    for (uint32_t i = 0; i < size; i++) {
        window[i] = 0.5f * (1.0f - cosf(2 * 3.1415926 * i / (size - 1)));
    }
    //__BKPT(0);
}

// 全局变量：窗函数数组
float32_t hanning_window[FFT_SIZE];

// 初始化函数（在程序启动时调用一次）
void fft_init() {
    //arm_cfft_init_f32(&S, 1000);  // 点数=1000
    //S.pTwiddle = twiddleFactors;
    //S.pBitRevTable = bitRevTable;
    generate_hanning_window(hanning_window, FFT_SIZE);
}
float32_t Harmonic_buffer[10];
uint32_t Harmonic_indexs[10];
//extern char tjcstr[100];

#if FFT_SIZE == 4096
#define arm_cfft_sR_f32 arm_cfft_sR_f32_len4096
#endif
#if FFT_SIZE == 2048
#define arm_cfft_sR_f32 arm_cfft_sR_f32_len2048
#endif
#if FFT_SIZE == 1024
#define arm_cfft_sR_f32 arm_cfft_sR_f32_len1024
#endif
#if FFT_SIZE == 512
#define arm_cfft_sR_f32 arm_cfft_sR_f32_len512
#endif
#if FFT_SIZE == 256
#define arm_cfft_sR_f32 arm_cfft_sR_f32_len256
#endif
#if FFT_SIZE == 128
#define arm_cfft_sR_f32 arm_cfft_sR_f32_len128
#endif
#if FFT_SIZE == 64
#define arm_cfft_sR_f32 arm_cfft_sR_f32_len64
#endif
#if FFT_SIZE == 32
#define arm_cfft_sR_f32 arm_cfft_sR_f32_len32
#endif

static uint32_t rate;
float32_t THD;
static float32_t io_buffer[FFT_SIZE * 2];
static float32_t mag_buffer[FFT_SIZE];
static uint32_t top_indexs[FFT_PEAK_SCARCH_DEPTH];
// void cTHD(){//显示各次谐波系数
//     //float32_t THD = sqrt(mag_buffer[16]*mag_buffer[16]+mag_buffer[24]*mag_buffer[24]+mag_buffer[32]*mag_buffer[32]+mag_buffer[40]*mag_buffer[40]+mag_buffer[48]*mag_buffer[48]+mag_buffer[56]*mag_buffer[56]+mag_buffer[64]*mag_buffer[64]+mag_buffer[72]*mag_buffer[72]+mag_buffer[80]*mag_buffer[80])/mag_buffer[8]*100.0f;
//     sprintf(tjcstr,"page1.t2.txt=\"%.3f%%\"\xff\xff\xff",Harmonic_buffer[1]/mag_buffer[8]*100);//发送至串口屏显示
//     HMISends();
//     sprintf(tjcstr,"page1.t3.txt=\"%.3f%%\"\xff\xff\xff",Harmonic_buffer[2]/mag_buffer[8]*100);//发送至串口屏显示
//     HMISends();
//     sprintf(tjcstr,"page1.t4.txt=\"%.3f%%\"\xff\xff\xff",Harmonic_buffer[3]/mag_buffer[8]*100);//发送至串口屏显示
//     HMISends();
//     sprintf(tjcstr,"page1.t5.txt=\"%.3f%%\"\xff\xff\xff",Harmonic_buffer[4]/mag_buffer[8]*100);//发送至串口屏显示
//     HMISends();
//     sprintf(tjcstr,"page1.t6.txt=\"%.3f%%\"\xff\xff\xff",Harmonic_buffer[5]/mag_buffer[8]*100);//发送至串口屏显示
//     HMISends();
//     sprintf(tjcstr,"page1.t7.txt=\"%.3f%%\"\xff\xff\xff",Harmonic_buffer[6]/mag_buffer[8]*100);//发送至串口屏显示
//     HMISends();
//     sprintf(tjcstr,"page1.t8.txt=\"%.3f%%\"\xff\xff\xff",Harmonic_buffer[7]/mag_buffer[8]*100);//发送至串口屏显示
//     HMISends();
//     sprintf(tjcstr,"page1.t9.txt=\"%.3f%%\"\xff\xff\xff",Harmonic_buffer[8]/mag_buffer[8]*100);//发送至串口屏显示
//     HMISends();
//     sprintf(tjcstr,"page1.t11.txt=\"%.3f%%\"\xff\xff\xff",Harmonic_buffer[9]/mag_buffer[8]*100);//发送至串口屏显示
//     HMISends();
// }
float get_magnitude1(uint32_t mubiaopl,float32_t *mag_buffer, uint32_t Fs)  {//Fs采样率；mubiaoopl 需要查看幅度的频率
    float fractional_bin;
    // 计算目标频点（插值法）
    fractional_bin = (float)mubiaopl * FFT_SIZE / Fs;
    int k_floor = (int)fractional_bin;
    float delta = fractional_bin - k_floor;
    //__BKPT(0);
    // 确保不越界
    if (k_floor + 1 >= FFT_SIZE / 2) {k_floor = FFT_SIZE / 2 - 2;}

    // 线性插值
    float magnitude = mag_buffer[k_floor] * (1 - delta) + mag_buffer[k_floor + 1] * delta;
    return magnitude;
}
void fft_load_window(uint16_t *adc_buffer) {
    for (size_t i = 0; i < FFT_SIZE; i++) {
        // 1. ADC原始值转电压 + 2. 应用汉宁窗
        io_buffer[i*2] = (float32_t)adc_buffer[i] / (1 << ADC_WIDTH) * ADC_RANGE * hanning_window[i];
        io_buffer[i*2+1] = 0; // 虚部清零
    }
}

float fd=0;
void fft_process(fft_data_t *fft_data,int a)
{
    // 进行DC去除
    {
        float32_t dc = 0;
        for(size_t i=0; i<FFT_SIZE; i++){
            dc += io_buffer[i*2];
        }
        dc /= FFT_SIZE;
        for(size_t i=0; i<FFT_SIZE; i++){
            io_buffer[i*2] -= dc;
        }
    }

    // 进行FFT
    arm_cfft_f32(&arm_cfft_sR_f32, io_buffer, 0, 1);
    arm_cmplx_mag_f32(io_buffer, mag_buffer, 1024);
    float32_t window_correction = 2.0; // 汉宁窗幅度补偿
    for (size_t i = 0; i < FFT_SIZE / 2; i++) {
        mag_buffer[i] *= window_correction;
    }
    //fd = get_magnitude1(5e4,mag_buffer,5e6);
    //__BKPT(0);
    //if(a==1){cTHD();}
    //  arm_max_f32(mag_buffer, FFT_SIZE / 2, (float32_t *)&Harmonic_buffer[0], &Harmonic_indexs[0]);
    // for (size_t i = 2; i < FFT_PEAK_SCARCH_DEPTH + 1; i++)
    // {
    //     arm_max_f32(&mag_buffer[Harmonic_indexs[0]*i-2],1024,(float32_t *)&Harmonic_buffer[i-1],&Harmonic_indexs[i-1]);
    // }
    for (int i = 1; i < 6; i++){
        Harmonic_buffer[i-1]=get_magnitude1(a*i ,mag_buffer ,2.5e6);
    }
    
    THD = sqrt(Harmonic_buffer[1]*Harmonic_buffer[1]+Harmonic_buffer[2]*Harmonic_buffer[2]+Harmonic_buffer[3]*Harmonic_buffer[3]+Harmonic_buffer[4]*Harmonic_buffer[4])/Harmonic_buffer[0]*100.0f;
    //THD*=0.85;
    //sprintf(tjcstr,"page1.t1.txt=\"%.3f%%\"\xff\xff\xff",THD);//发送至串口屏显示
    //HMISends();
    //cTHD();
    for(int i = 0; i < 5; i++){
        Harmonic_buffer[i]=0.0047 * Harmonic_buffer[i] + 0.0019;
    }
    __BKPT();
    // 峰值搜索
    for (size_t i = 0; i < FFT_PEAK_SCARCH_DEPTH; i++){
        arm_max_f32(mag_buffer, FFT_SIZE / 2, (float32_t *)&fft_data->top_mags[i], &top_indexs[i]);
        fft_data->top_freqs[i] = (float32_t)top_indexs[i] * rate / FFT_SIZE;
        fft_data->top_phases[i] = atan2(io_buffer[top_indexs[i] * 2 + 1], io_buffer[top_indexs[i] * 2]);
        // 将已经搜索到的峰值置为0
        mag_buffer[top_indexs[i]] = 0;
    }
}

// static float32_t io_buffer2[2000];
// static float32_t mag_buffer2[1000];
// void fft_load(uint16_t *adc_buffer) {
//     for (size_t i = 0; i < 1000; i++) {
//         // 1. ADC原始值转电压 
//         io_buffer2[i*2] = (float32_t)adc_buffer[i] / (1 << ADC_WIDTH) * ADC_RANGE;
//         io_buffer2[i*2+1] = 0; // 虚部清零
//     }
// }
// void fft_hunji(fft_data_t *fft_data,int a){
//     // 进行DC去除
//         float32_t dc = 0;
//         for(size_t i=0; i<1000; i++){
//             dc += io_buffer2[i*2];
//         }
//         dc /= 1000;
//         for(size_t i=0; i<1000; i++){
//             io_buffer2[i*2] -= dc;
//         }
    
//     arm_cfft_f32(&S, io_buffer2, 0, 1);
//     arm_cmplx_mag_f32(io_buffer2, mag_buffer2, 500);
//     __BKPT(0);
// }

#if ENABLE_AP_FFT == 1

#if FFT_LENGTH == 4096
#define arm_cfft_sR_f32_ap arm_cfft_sR_f32_len2048
#endif
#if FFT_LENGTH == 2048
#define arm_cfft_sR_f32_ap arm_cfft_sR_f32_len1024
#endif
#if FFT_LENGTH == 1024
#define arm_cfft_sR_f32_ap arm_cfft_sR_f32_len512
#endif
#if FFT_LENGTH == 512
#define arm_cfft_sR_f32_ap arm_cfft_sR_f32_len256
#endif
#if FFT_LENGTH == 256
#define arm_cfft_sR_f32_ap arm_cfft_sR_f32_len128
#endif
#if FFT_LENGTH == 128
#define arm_cfft_sR_f32_ap arm_cfft_sR_f32_len64
#endif
#if FFT_LENGTH == 64
#define arm_cfft_sR_f32_ap arm_cfft_sR_f32_len32
#endif
#if FFT_LENGTH == 32
#define arm_cfft_sR_f32_ap arm_cfft_sR_f32_len16
#endif

void fft_ap_load(uint16_t *adc_buffer, uint32_t sample_rate)
{
    rate = sample_rate;

    // 全相位开发尚未完成
}

#endif
