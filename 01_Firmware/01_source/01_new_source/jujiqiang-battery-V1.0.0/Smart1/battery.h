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
 * @file         : \Smart1\battery.h
 * @author       : LonlyPan
 * @version      : V0.0.0
 * @date         : 2021-06-07 11:35
 * @brief        : 电池状态检测、电量管理
 * @attention    : // 注意事项
 * @Modification : 初始版本
 * @LastEditTime : 2021-06-08 09:26
 * @History      : 
 *   1.Version: 
 *     Author:
 *     date:    
 *     Modification: 
 *   2.Version: 
 *     ......
 */


#ifndef BATTERY_H_
#define BATTERY_H_

#include "comHeader.h"

void battery_init();

/**
 * @brief  根据ADC值计算电池电量（百分比）
 */
void bat_update_power_from_raw(void);

/**
* @brief  查询是否正在充电中
* @retval true 正在充电，否则 false
*/
bool battery_is_lowpower();
/**
* @brief  电池电量管理
* @retval
*/
void bat_manage();
#endif /* BATTERY_H_ */
