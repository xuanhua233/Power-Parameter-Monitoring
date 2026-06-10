#ifndef _AD9833_H_
#define _AD9833_H_
#include "ti_msp_dl_config.h"



/******************************************************************************/
/* AD9833                                                                    */
/******************************************************************************/
/* �Ĵ��� */

#define AD9833_REG_CMD		(0 << 14)
#define AD9833_REG_FREQ0	(1 << 14)
#define AD9833_REG_FREQ1	(2 << 14)
#define AD9833_REG_PHASE0	(6 << 13)
#define AD9833_REG_PHASE1	(7 << 13)

/* ��������? */

#define AD9833_B28				(1 << 13)
#define AD9833_HLB				(1 << 12)
#define AD9833_FSEL0			(0 << 11)
#define AD9833_FSEL1			(1 << 11)
#define AD9833_PSEL0			(0 << 10)
#define AD9833_PSEL1			(1 << 10)
#define AD9833_PIN_SW			(1 << 9)
#define AD9833_RESET			(1 << 8)
#define AD9833_SLEEP1			(1 << 7)
#define AD9833_SLEEP12		(1 << 6)
#define AD9833_OPBITEN		(1 << 5)
#define AD9833_SIGN_PIB		(1 << 4)
#define AD9833_DIV2				(1 << 3)
#define AD9833_MODE				(1 << 1)

#define AD9833_OUT_SINUS		((0 << 5) | (0 << 1) | (0 << 3))//���Ҳ� 
#define AD9833_OUT_TRIANGLE	((0 << 5) | (1 << 1) | (0 << 3))//���ǲ�
#define AD9833_OUT_MSB			((1 << 5) | (0 << 1) | (1 << 3)) //����
#define AD9833_OUT_MSB2			((1 << 5) | (0 << 1) | (0 << 3))

void AD983_GPIO_Init(void);//��ʼ��IO��
void AD9833_Init(void);//��ʼ��IO�ڼ��Ĵ���

void AD9833_Reset(void);			//��λAD9833�ĸ�λλ
void AD9833_ClearReset(void);	//���AD9833�ĸ�λλ

void AD9833_SetRegisterValue(unsigned short regValue);												//��ֵд��Ĵ���?
void AD9833_SetFrequency(unsigned short reg, float fout,unsigned short type);	//д��Ƶ�ʼĴ���
void AD9833_SetPhase(unsigned short reg, unsigned short val);									//д����λ�Ĵ���

void AD9833_Setup(unsigned short freq,unsigned short phase,unsigned short type);//ѡ��Ƶ�ʡ���λ�Ͳ�������
void AD9833_SetFrequencyQuick(float fout,unsigned short type);//����Ƶ�ʼ���������

#endif 
