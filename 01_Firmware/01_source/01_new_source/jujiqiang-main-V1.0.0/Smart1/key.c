/**
  * Copyright (c)   LonlyPan . 2017-2020. All rights reserved.
  * @file：   onebutton.c
  * @author： LonlyPan
  * @version：V1.0
  * @date：   2020-05-31
  * @brief：  用于检测按钮上的按钮单击，双击和长按模式的库。
  *           移植自：http://www.mathertel.de/Arduino/OneButtonLibrary.aspx
  * @attention：
  */

#include "key.h"

#define DEBOUNCETIME  100 // ms 按键去抖时间
#define CLICKTIME  200  // ms 检测到单击之前必须经过的时间
#define LONGTIME  1500 // ms 检测到长按之前必须经过的时间

// 这些变量在按键检测时保存信息。
// 它们在程序启动时初始化一次，并在每次调用key_scan()函数时更新。
static u8 mode_state = 0;
static millis_t mode_startTime = 0; // will be set in state 1
/**
 * @brief: 按键无阻塞检测程序
 * @note: 只有单击检测，且必须 按下+释放 才视为一次有效动作
 */
u8 mode_button_tick(void)
{
	u8 key_status = 0;
    millis_t now = millis(); // current time in ms.

    if (mode_state == 0) { // waiting for pin being pressed.
        if (MODE_BUTTON_PRESSED) {
        	mode_state = 1; // step to state 1
        	mode_startTime = now; // remember starting time
        }
        else
        	key_status = NO_CLICK;
    }
    else if (mode_state == 1) {  // waiting to get

        if ((MODE_BUTTON_PRESSED) && ((unsigned long)(now - mode_startTime) > LONGTIME)) {
        	mode_state = 2;
        	key_status =  SINGLE_CLICK;
        	return key_status;
        }
        else if ((!MODE_BUTTON_PRESSED)) {
            // 期间只要按键释放，返回状态0，无任何动作
        	mode_state = 0;
        }
    }
    else if (mode_state == 2) {  // waiting to get
    	key_status =  NO_CLICK;
        if ((!MODE_BUTTON_PRESSED)) {  // 此处等待按键释放，连续触发
        	mode_state = 0;
        }
    }
    return key_status;

} // OneButton.tick()

static u8 shot_state = 0;
static millis_t shot_startTime = 0; // will be set in state 1
/**
 * @brief: 按键无阻塞检测程序
 * @note: 只有单击检测，且必须 按下+释放 才视为一次有效动作
 */
u8 shot_button_tick(void)
{
    u8 key_status = 0;
    millis_t now = millis(); // current time in ms.

    if (shot_state == 0) { // waiting for pin being pressed.
        if (SHOT_BUTTON_PRESSED) {
            shot_state = 1; // step to state 1
            shot_startTime = now; // remember starting time
        }
        else
            key_status = NO_CLICK;
    }
    else if (shot_state == 1) { // waiting for pin being released.

        if ((!SHOT_BUTTON_PRESSED) && ((unsigned long)(now - shot_startTime) < DEBOUNCETIME)) {
            // 按键释放太快，认为事抖动，返回状态0，不任何动作
            shot_state = 0;
        }
        else if (!SHOT_BUTTON_PRESSED) {
            // this was only a single short click
            key_status = SINGLE_CLICK;
            shot_state = 0; // restart.
        }
    }
    return key_status;
} // OneButton.tick()


