/**
  * Copyright (c)   LonlyPan . 2017-2020. All rights reserved.
  * @file：   onebutton.h
  * @author： LonlyPan
  * @version：V1.0
  * @date：   2020-08-31
  * @brief：  用于检测单个按钮上的按钮单击，双击和长按模式的库。
    *           移植自：http://www.mathertel.de/Arduino/OneButtonLibrary.aspx
  * @attention： 电源开/关 按键时连续触发，其余为单次触发
    *                         连续触发：无需等待用户释放按键，只要按键时常满足要求，就认为有效
    *                         单次触发：需等待用户释放，如果用户不释放按键，仅认为一次有效
  * @Modification:
  * @History:
  *   1.Version:
  *   Author:
  *     date:
  *     Modification:
  */


#ifndef KEY_H_
#define KEY_H_


#include "comHeader.h"
#include "main.h"

/* 按键状态 */
enum KEY_STATUS{
    NO_CLICK,        /* 没有动作 */
    SINGLE_CLICK,    /* 单击 */
    DOUBLE_CLICK,
};

// 按键低电平有效
#define MODE_BUTTON_PRESSED  (HAL_GPIO_ReadPin(MODE_KEY_GPIO_Port, MODE_KEY_Pin)!=1)
// 按键低电平有效
#define SHOT_BUTTON_PRESSED  (HAL_GPIO_ReadPin(SHOT_KEY_GPIO_Port, SHOT_KEY_Pin)!=1)

void buttom_init(void);


/**
 * @brief  按键扫描状态机（FSM）
 * @retval enum key_status（单次触发）
 */
u8 mode_button_tick(void);
u8 shot_button_tick(void);

#endif /* KEY_H_ */
