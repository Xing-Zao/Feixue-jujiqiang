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
 * @file         : \user\servo.c
 * @author       : LonlyPan
 * @version      : V0.0.0
 * @date         : 2021-03-13 17:15
 * @brief        : 舵机驱动
 * @attention    :
 * @Modefication : 初始版本
 * @LastEditTime : 2021-03-17 10:00
 */

#include "servo.h"
#include "tim.h"

/**
 * @brief     舵机初始化
 * @note      具体配置见 Core->Src->tim.c
 * @attention 定时器自动重装载值 20000，对应脉冲周期 20ms
 */
void servo_init(void)
{
    TIM3->CCR2=1500;   /* 比较值对应1.5ms高电平，对应角度为90度（0-180），在使能PWM输出之前配置 */
    servo_set_angle(CLOSE_ANGLE);
    HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_2);  /* 打开PWM输出 */
}

/**
 * @brief     设定舵机角度
 * @note      0-180度对应比较值 500-2500
 * @attention 定时器自动重装载值 20000，对应脉冲周期 20ms
 */
void servo_set_angle(u16 angle)
{
	TIM3->CCR2=(u16)angle*200/18+500;  /* 角度换算 */
}
