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
 * @file         : \Smart1\adc1.c
 * @author       : LonlyPan
 * @version      : V0.0.0
 * @date         : 2021-06-07 11:35
 * @brief        : ADC
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


#include <adc.h>
#include "tim.h"
#include "adc1.h"
#include "S1_main.h"

// private

static int current_adc_raw = 0 ; //当前温度16次原始数据采集和
static bool adc_meas_ready = false;  //温度测量完成标志

void adc_start_conversion(uint32_t ch)
{
	ADC_ChannelConfTypeDef sConfig ;

	sConfig.Channel = ch;
	sConfig.Rank = ADC_REGULAR_RANK_1;                // 1个序列，序列1
	sConfig.SamplingTime = ADC_SAMPLINGTIME_COMMON_1;
	HAL_ADC_ConfigChannel(&hadc1, &sConfig);          //通道配置
    HAL_ADC_Start(&hadc1);                            // 启动ADC转换
}

uint16_t adc_get_conversion_value()
{
	// 原12位adc，右移2位
    //HAL_ADC_PollForConversion(&hadc1,10);           //轮询转换 10ms超时
	return (uint16_t)(HAL_ADC_GetValue(&hadc1)>>2);	        	// 返回一次ADC1规则组的转换结果;
}

// 检测一轮 64ms
void set_current_adc_raw(void)
{
	//static uint8_t index = 0;
	static uint8_t temp_count = 0;      // adc采样次数
	static unsigned long raw_adc_value = 0;  // 临时adc累计值
	static enum ADC_SENSOR_STATE adc_sensor_state = SensorsReady;  // adc传感器状态

	//*
	switch (adc_sensor_state){

		case PrepareTemp:
			adc_start_conversion(ADC_CHANNEL_1); //启动adc转换  BAT_ADC
		  break;
		case MeasureTemp:
			raw_adc_value += adc_get_conversion_value();//获取adc值
			if (++temp_count >= OVERSAMPLENR) {
				temp_count = 0;
				// 更新当前温度adc数值，直到被读取才会再次更新数据
				if (!adc_meas_ready) {
					current_adc_raw = raw_adc_value;
					adc_meas_ready = true;  // 读取时会设为false
				}
				raw_adc_value = 0;
			}
			break;
		case SensorsReady: break;
		default:
			break;
	}

    // Go to the next state, up to SensorsReady
	adc_sensor_state = (enum ADC_SENSOR_STATE)((adc_sensor_state) + 1);
	if (adc_sensor_state >= SensorsReady) adc_sensor_state = (enum ADC_SENSOR_STATE)0;
	//*/

}



int get_current_adc_raw()
{
	return current_adc_raw;
}


bool get_adc_meas_ready()
{
	return adc_meas_ready;
}


void set_adc_meas_noready()
{
	adc_meas_ready = false;
}





