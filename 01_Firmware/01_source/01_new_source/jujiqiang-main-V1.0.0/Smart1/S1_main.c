#include "S1_main.h"
#include "tim.h"
#include "ws2812.h"
#include "servo.h"
#include "key.h"
#include "usart.h"
#include "uart.h"
#include "stdio.h"

static uint8_t shot_status = SHOT_BLUE; // 默认蓝色
// AA - 指 令 类 型 - 数 据 长 度 （ n ） - 数 据 1 － 数 据 n － 和 检 验 ( S M )
// 制定曲目： AA 07 02 曲目高  曲目低  SM
// 音量设置： AA 13 01 VOL（0-30） SM
// 数组最后一个元素为 之 前 所 有 字 节 之 和 的 低 8 位 , 即 起 始 码 到 数 据 相 加 后 取 低 8 位
uint8_t Buffer1[6] = {0xAA,0x07,0x02,0x00,0x01,0xB4};  // 射击声
uint8_t Buffer2[6] = {0xAA,0x07,0x02,0x00,0x02,0xB5};  // 没电声
uint8_t Buffer3[5] = {0xAA, 0x13, 0x01, 0x1E, 0xDC};   // 设置音量最大


/**
 * @brief: 按键处理函数
 * @note:  切换四次状态
 * @detail: key_value 状态不会保持保存
 */
void key_process(void)
{
	uint8_t mode_key_value =mode_button_tick();
	uint8_t shot_key_value =shot_button_tick();
    if(mode_key_value == SINGLE_CLICK){
    	if(shot_status == SHOT_BLUE){  // 橙色射击模式
    		printf("1\n");
    		shot_status = SHOT_ORG;
    	}
    	else if(shot_status == SHOT_ORG){   // 蓝色常量
    		printf("2\n");
    		ws2812_blu_style();
    	    shot_status = NO_BLU;
    	 }
    	else if(shot_status == NO_BLU){   // 橙色常量
    		printf("3\n");
    		ws2812_org_style();
    	    shot_status = NO_ORG;
    	}

    	else if(shot_status == NO_BLU){   // 蓝色射击模式
    		ws281x_close_all();
    		printf("0\n");
    	    shot_status = SHOT_BLUE;
    	 }
    }
    if(shot_key_value == SINGLE_CLICK){  // 射击

        if(shot_status == NO_BLU || shot_status == NO_ORG){  // 射击
    		// 发送没电测试信号
        	printf("8\n");

    		servo_set_angle(CLOSE_ANGLE);
    		ws281x_close_all();
    		//HAL_UART_Transmit(&huart2,&Buffer2,6,1000);  // 语音

    		HAL_Delay(2000);
    	    shot_status = SHOT_BLUE;
        }

        else if(shot_status == SHOT_BLUE|| shot_status == SHOT_ORG){
			servo_set_angle(OPEN_ANGLE);
			//HAL_UART_Transmit(&huart2,&Buffer1,6,1000);  // 发送10个数据
			if(shot_status == SHOT_BLUE){
				ws2812_shot_blu_style();
				HAL_Delay(300);
			}
			else if(shot_status == SHOT_ORG){
				ws2812_shot_org_style();
				HAL_Delay(200);
			}
			servo_set_angle(CLOSE_ANGLE);
        }
    }
}

/**
 * @brief  标准闲置程序使机器保持活动状态
 */

void idle(){
	if(USART_RX_STA&0x8000){
		if(USART_RX_BUF[0] == 9){
			USART_RX_STA=0;
			servo_set_angle(CLOSE_ANGLE);
			ws281x_close_all();
			//HAL_UART_Transmit(&huart2,&Buffer2,6,1000);  // 发送10个数据
			while(1);
		}
	}
}


/**
 * @brief  定时器初始化
 *         PWM初始化
  *                开机检测
 */
void setup(void)
{
	uart_init();

	ws281x_init();

	servo_init();   /* 舵机初始化 */

	ws2812_shot_blu_style();
	//HAL_UART_Transmit(&huart2,&Buffer3,5,1000);  // 发送10个数据
 	HAL_Delay(1000);

}

void loop(void)
{
	idle();

	key_process();

}

