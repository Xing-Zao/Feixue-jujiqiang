/**
* 项目名 Firmware
* Copyright (c) 2020-2021 LonlyPan. All rights reserved.
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <https://www.gnu.org/licenses/>.
*
*/
/*
 * @file         : x:\Light_detector\01_Firmware\01_source\01_new_source\detector-A1.1\user\ws2812.c
 * @author       : LonlyPan
 * @version      : V0.0.0
 * @date         : 2021-03-17 08:59
 * @brief        : Header file of xxx module  // 用于详细说明此程序文件完成的主要功能，与其他模块或函数的接口，输出值、取值范围、含义及参数间的控制、顺序、独立或依赖等关系
 * @attention    : // 注意事项
 * @Modefication : 初始版本
 * @History      :
 *   1.Version:
 *     Author:
 *     date:
 *     Modification:
 *   2.Version:
 *     ......
 */
/*
 * ws2812.c
 *
 *  Created on: Feb 27, 2021
 *      Author: 23714
 */


#include "ws2812.h"
#include "tim.h"
#include <string.h>
//#include <stdlib.h>
#include <stdint.h>

//------------------------------- 通用显示程序 ----------------------------------- //
/* RGB 缓存全局数组，每8个元素表示8bit = 1个像素的值，每24个元素表示一个LED的三个像素RGB值，RGB依次循环排列
  *  每个元素值范围 0-255
  *  仅在该源文件中使用，先将LED的RGB值存储到该数组中，再启动DMA传输，即可完成LED的控制
 */
static uint16_t BUF_DMA[ARRAY_LEN] = {0};

/**
 * @brief: 初始化函数，所有灯熄灭
 * @note: 上电瞬间、灯带会显示紊乱，需要先主动熄灭
 */
void ws281x_init(void)
{
	ws281x_close_all();
}

/**
 * @brief: 所有灯熄灭
 * @note: 
 */
void ws281x_close_all()
{

	for(int j=DELAY_LEN;j<ARRAY_LEN;j++)
		BUF_DMA[j] = LED_0_PULSE;

	HAL_TIM_PWM_Start_DMA(&htim3,TIM_CHANNEL_2,(uint32_t *)BUF_DMA,ARRAY_LEN);
	HAL_Delay(10);
}


/**
 * @brief: 设置单个灯颜色
 * @note: 仅设置到buf缓存中，并不立即生效
 * @param {uint8_t} Rpixel、Gpixel、Bpixel RGB值 0-255
 * @param {uint16_t} posX 灯编号
 */
void ws281x_set_Pixe_rgb_buf(uint8_t Rpixel , uint8_t Gpixel, uint8_t Bpixel, uint16_t posX)
{
	uint32_t GRBcolor = Gpixel << 16 | Rpixel << 8 | Bpixel;
	for(u8 i=0;i<24;i++)
	{
		BUF_DMA[DELAY_LEN+24 * posX + i] = (((GRBcolor << i) & 0X800000) ? LED_1_PULSE : LED_0_PULSE);
	}
}

/**
 * @brief: 设置所有灯为为同一颜色
 * @note: 仅设置到buf缓存中，并不立即生效
 * @param {uint8_t} Rpixel、Gpixel、Bpixel RGB值 0-255
 * @detail:
 */
void ws281x_set_group_all_rgb_buf(uint8_t Rpixel , uint8_t Gpixel, uint8_t Bpixel)
{
	uint32_t BUF_DMA_TEMP[24];
	uint32_t GRBcolor = Gpixel << 16 | Rpixel << 8 | Bpixel;
	for(u8 i=0;i<24;i++)
	{
		BUF_DMA_TEMP[i] = (((GRBcolor << i) & 0X800000) ? LED_1_PULSE : LED_0_PULSE);
	}

	for(u8 i=0;i<LED_NUM;i++){
		for (u8 j = 0; j < 24; j++){
			BUF_DMA[DELAY_LEN+i * 24 + j] = BUF_DMA_TEMP[j];
		}
	}
}

/**
 * @brief: 启动DMA传输（点亮LED）
 * @note:
 * @detail:
 */

void ws281x_light()
{
	HAL_TIM_PWM_Start_DMA(&htim3,TIM_CHANNEL_2,(uint32_t *)BUF_DMA,ARRAY_LEN);
	HAL_Delay(10);
}


/**
 * @brief: 设置所有灯为为同一颜色，并启动DMA传输（点亮LED）
 * @note:
 * @param {uint8_t} Rpixel、Gpixel、Bpixel RGB值 0-255
 * @detail:
 */
void ws281x_set_all_rgb_buf_light(uint8_t Rpixel , uint8_t Gpixel, uint8_t Bpixel)
{
	ws281x_set_group_all_rgb_buf(Rpixel , Gpixel, Bpixel);
	ws281x_light();
}


//------------------------- 以下是根据产品功能定制的显示模式 -----------------------------------------//

/**
 * @brief: 灯带全为蓝色，对应动作：远程模式
 * @note:
 * @detail:
 */
void ws2812_blu_style()
{
	ws281x_set_all_rgb_buf_light(BLU_COLOR_R, BLU_COLOR_G, BLU_COLOR_B);
	HAL_Delay(10);
}

/**
 * @brief: 灯带全为橙色，对应动作：近程模式
 * @note:
 * @detail:
 */
void ws2812_org_style()
{
	ws281x_set_all_rgb_buf_light(ORG_COLOR_R, ORG_COLOR_G, ORG_COLOR_B);
	HAL_Delay(10);
}

/**
 * @brief: 灯带从尾到首逐个变为红色，对应动作：电池没电
 * @note:
 * @detail:
 */
void ws2812_low_power_style()
{
	for(u8 i=0;i<LED_NUM;i++){
		ws281x_set_Pixe_rgb_buf(RED_COLOR_R,RED_COLOR_G,RED_COLOR_B,LED_NUM-i-1);
		ws281x_light();
		HAL_Delay(10);
	}
}
//------------------------------------------------------------------
