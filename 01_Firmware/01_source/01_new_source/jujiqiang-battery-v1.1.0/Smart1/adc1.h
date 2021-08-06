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
 * @file         : adc1.h
 * @author       : LonlyPan
 * @version      : V0.0.0
 * @date         : 2021-06-07 11:35
 * @brief        : ADC管理，采集温度、电池ADC数据
 * @attention    : // 注意事项
 * @Modification : 初始版本
 * @LastEditTime : 2021-06-08 09:37
 * @History      : 
 *   1.Version: 
 *     Author:
 *     date:    
 *     Modification: 
 *   2.Version: 
 *     ......
 */

#ifndef ADC1_H_
#define ADC1_H_

#include "comHeader.h"

#define OVERSAMPLENR 16

/**
 * States for ADC reading in the ISR
 */
enum ADC_SENSOR_STATE {
  PrepareTemp,   // 开始adc转换 BAT_ADC
  MeasureTemp,   // 读取adc数据
  SensorsReady     // 一轮adc数据读取完成
};

/**
 * @brief   切换 ADC 通道并启动转换
 * @param  ch 通道号  取值范围为：ADC_CHANNEL_0~16
 * @note
 */
void adc_start_conversion(uint32_t ch);

/**
 * @brief  获取当前通道的转换值
 * @retval 当前通道的转换值 0-1024
 * @note
 */
uint16_t adc_get_conversion_value();

/**
 * @brief 原始ADC数据采集及采集状态设置
 * @note  在TIM4中断里运行
 */
void set_current_adc_raw(void);

/**
 * @brief  获取ADC累加16次后的数据
 * @param  pos 数据索引 in ADC_ARRAY_POS
 * @retval 累加16次后的数据
 */
int get_current_adc_raw();

/**
 * @brief  获取ADC数据采集状态
 * @param  pos 数据索引 in ADC_ARRAY_POS
 * @retval true 当前索引对应数据采集完毕，否则 false
 */
bool get_adc_meas_ready();

/**
 * @brief  设置ADC数据采集状态
 * @param  pos 数据索引 in ADC_ARRAY_POS
 * @note   被 temperature 和 battery 调用，在获取一次数据后，设置该状态
 */
void set_adc_meas_noready();



#endif /* ADC1_H_ */
