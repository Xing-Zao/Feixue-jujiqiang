/**
  * Copyright (c)   LonlyPan . 1998-2021.  All rights reserved.
  * @file:    ws2812.h
  * @author:  LonlyPan
  * @version: V0.1
  * @date:    2021-02-01
  * @brief:   Header file of WS2812B彩色lED module
  *
  * @attentio:
  * @Modification: 初始版本
  * @History:
  *   1.Version:
  *   Author:
  *     date:
  *     Modification:

  */
#ifndef WS2812_H_
#define WS2812_H_


//--------------------------------------------------
#include "Comheader.h"

#define RED_COLOR_R 126
#define RED_COLOR_G 0
#define RED_COLOR_B 0


#define BLU_COLOR_R 0
#define BLU_COLOR_G 0
#define BLU_COLOR_B 126

#define ORG_COLOR_R 126
#define ORG_COLOR_G 40
#define ORG_COLOR_B 0

#define DELAY_LEN 240  //48  /* 延时复位计数，280us;48*脉冲周期1.25us*/
#define LED_NUM 25  /* LED个数  */
#define ARRAY_LEN (DELAY_LEN + LED_NUM*24)  // 开始延时+LED数量*8位*3色

#define LED_1_PULSE 54  // 定时器比较寄存器值，数据1高电平0.85us对应的计数值。定时器重装载值79，一个数据脉冲周期1.25us  频率800KHz
#define LED_0_PULSE 25  // 数据0高电平0.4us对应的计数值
//--------------------------------------------------
#define BitIsSet(reg, bit) ((reg & (1<<bit)) != 0)

//Public Functions--------------------------------------------------
/**
 * @brief  ws2812B初始化，灯全灭
 */
void ws281x_init(void);

/**
 * @brief  熄灭所有灯
 */
void ws281x_close_all();

/**
 * @brief: 灯带全为蓝色，对应动作：远程模式
 */
void ws2812_blu_style();

/**
 * @brief: 灯带全为橙色，对应动作：近程模式
 */
void ws2812_org_style();

/**
 * @brief: 灯带从尾到首逐个变为红色，对应动作：电池没电
 */
void ws2812_low_power_style();

//Private Functions--------------------------------------------------
/**
 * @brief  设置指定编号LED的R、G、B亮度值。
 */
void ws281x_set_Pixe_rgb_buf(uint8_t Rpixel , uint8_t Gpixel, uint8_t Bpixel,uint16_t posX);

/**
 * @brief: 设置所有灯为为同一颜色
 */
void ws281x_set_group_all_rgb_buf(uint8_t Rpixel , uint8_t Gpixel, uint8_t Bpixel);

/**
 * @brief  启动DMA-PWM传输。
 */
void ws281x_light();

/**
 * @brief: 设置所有灯为为同一颜色并立即生效
 */
void ws281x_set_all_rgb_buf_light(uint8_t Rpixel , uint8_t Gpixel, uint8_t Bpixel);

void ws281x_close_all();
//--------------------------------------------------

#endif /* WS2812_H_ */
