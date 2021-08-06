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
 * @file         : \user\servo.h
 * @author       : LonlyPan
 * @version      : V0.0.0
 * @date         : 2021-03-13 17:15
 * @brief        : 舵机驱动
 * @attention    :
 * @Modefication : 初始版本
 * @LastEditTime : 2021-03-17 09:59
 * @History      :
 *   1.Version:
 *     Author:
 *     date:
 *     Modification:
 *   2.Version:
 *     ......
 */
#ifndef SERVO_H_
#define SERVO_H_

#include "Comheader.h"

/**
 * @brief 舵机初始化
 */
void servo_init(void);

/**
 * @brief  设定舵机角度
 * @param  angle 角度值 0-180
 */
void servo_set_angle(u16 angle);


#endif /* SERVO_H_ */
