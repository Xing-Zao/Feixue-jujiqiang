/**
 *  飞雪狙击枪- Firmware
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
 * @file         : battery.c
 * @author       : LonlyPan
 * @version      : V0.0.0
 * @date         : 2021-06-07 11:35
 * @brief        : 电池状态检测、电量管理
 * @attention    : // 注意事项
 * @Modification : 初始版本
 * @LastEditTime : 2021-06-08 09:25
 * @History      : 
 *   1.Version: 
 *     Author:
 *     date:    
 *     Modification: 
 *   2.Version: 
 *     ......
 */

#include "battery.h"
#include "adc1.h"


/* @detail
 *  电池 容量比例                            80-100      40-80         5-40     0（%）
 *  经1/3M电阻分压后电压（V）
 *      adc 使用                                                   > 2.23    *  ADC值
 *      adc 使用                                                   >692
 */
/* 电池低电对应ADC值 */
#define BAT_LOW_POWER_RAW 692  //819.2

#define BAT_UPDATE_POWER_TIME  20 // max: 255 电量更新时间约为 x*64ms

static bool islowpower = false;  		     // 充电完成

void battery_init()
{

}

/**
 * @detail get_current_adc_raw() 获取的是16次采样值和
 * @note 电池在充、放电时电压与容量的对应关系是不同的
  *             电池容量比例  100    [80-100)     [ 40-80)        [5-40)     [5-0]（%）
 */
static uint16_t no_power_time = 0;
void bat_update_power_from_raw(void)
{
	static uint8_t update_count =  0;
	static float raw_temp = 0;
	static float raw =1024;

	raw_temp  += (float) get_current_adc_raw()/16;

	if((++update_count) >= BAT_UPDATE_POWER_TIME){
		raw = raw_temp/BAT_UPDATE_POWER_TIME;
		raw_temp = 0;
		update_count = 0;
	    if(raw < (float)BAT_LOW_POWER_RAW){
	    	no_power_time++;
	    	if(no_power_time >= 200)
	    		islowpower = true;
	    }
	    else
	    	no_power_time=0;
	}

	set_adc_meas_noready();
}

void bat_manage()
{
    if(get_adc_meas_ready() != true)   // better readability
        return;
    bat_update_power_from_raw();    // 更新当前电量
}

bool battery_is_lowpower()
{
	return islowpower;

}


