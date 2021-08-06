/**
  *   飞雪狙击枪 Firmware
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
 * @file         : S1_main.c
 * @author       : LonlyPan
 * @version      : V0.0.0
 * @date         : 2021-06-07 11:35
 * @brief        : 主函数
 * @attention    : // 注意事项
 * @Modification : 初始版本
 * @LastEditTime : 2021-06-08 09:34
 * @History      :
 *   1.Version:
 *     Author:
 *     date:
 *     Modification:
 *   2.Version:
 *     ......
 */
//#include <adc1.h>
#include "main.h"
#include "usart.h"
#include "S1_main.h"
#include "adc1.h"
#include "battery.h"
#include "tim.h"
#include "ws2812.h"
#include "uart.h"
#include "stdio.h"


void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	if(htim == &htim14 ){
		set_current_adc_raw();             // 获取温度传感器数据;
	}
}

/**
 * @brief  标准闲置程序使机器保持活动状态
 */
void idle(){
 	bat_manage();
}



/**
 * @brief  定时器初始化
 *         PWM初始化
  *                      开机检测
 */
void setup(void)
{
	uart_init();
	HAL_TIM_Base_Start_IT(&htim14);  /* 定时器必须等待系统稳定后才能使能，涉及到 ADC 采集 */
	ws281x_init();

	ws2812_low_power_style();

	HAL_Delay(1000);
	ws2812_blu_style();
}

void loop(void)
{
	idle();

	if(!battery_is_lowpower()){
		if(USART_RX_STA&0x8000){
			switch(USART_RX_BUF[0]){
				case '0':
					ws2812_blu_style();
					break;
				case '1':
					ws2812_org_style(); // 橙色
					break;
				case '2':
					ws2812_blu_style();
					break;
				case '3':
					ws2812_org_style(); // 橙色
					break;
				case '8':  // nopower test
					ws2812_low_power_style();
					HAL_Delay(1000);  // 模式保持5s
					HAL_Delay(1000);
					HAL_Delay(1000);
					HAL_Delay(1000);
					HAL_Delay(1000);
					ws2812_blu_style();
					break;
			};
			USART_RX_STA=0;
		}
	}
	else{
		printf("9\r\n");
		ws2812_low_power_style();
		while(1);
	}

}

