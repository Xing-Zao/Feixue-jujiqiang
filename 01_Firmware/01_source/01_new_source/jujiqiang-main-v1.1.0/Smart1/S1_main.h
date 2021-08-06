/**
  * Copyright (c)   LonlyPan. 2020-2020. All rights reserved.
  * @file：   S1_main.h
  * @author： LonlyPan
  * @version：V1.0.1
  * @date：   2020-08-24
  * @brief：  主函数及全局通用函数
  * @attention：
  * @Modification:
  * @History:
  *   1.Version:
  *   Author:
  *     date:
  *     Modification:
  */

#ifndef S1_MAIN_H_
#define S1_MAIN_H_


#include <comHeader.h>
#include "main.h"

#define LOW_POWER_IN

enum key_status{
	SHOT_BLUE,
	SHOT_ORG,
	NO_BLU,
	NO_ORG,
};
 /**
  * @brief  标准闲置程序使机器保持活动状态
  * - 温度管理：控制加热丝温度，温度保护
  * - 按键检测：执行按键扫描，并更新按键状态
  * - 充电检测：通过检测 充电芯片 引脚状态，判断当前处在充电状态、满电状态、非充电状态
  * - 电量显示：根据是否在充电，控制电量指示灯的不同状态显示。具体查看设计需求。
  */
 void idle();


 /**
  * @brief  开机检测
  * - 温度检测：高低温检测
  * - 按键检测：执行按键扫描，并更新按键状态
  * - 充电检测：通过检测 充电芯片 引脚状态，判断当前处在充电状态、满电状态、非充电状态
  */
void setup_check();


 /**
  * @brief  关电机，关加热，关LED
  * @note   目前仅在温度错误时调用
  */
void kill();

/**
 * @brief  等待用户长按关机。
 * @note   错误后，执行此程序。
 */
void kill_watting();

/**
 * @brief  定时器初始化
 *         PWM初始化
  *                开机检测
 */
void setup(void);


/**
 * @brief  主进程循环
 */

void loop(void);




#endif /* S1_MAIN_H_ */
