
/******************** (C) COPYRIGHT  小不点信息科技********************
 * 描 述   ：Smart1-3D打印笔
 * 版 本   ：V1.0.1
 * 作 者   ：LonlyPan
 * 修改时间 ：2020-08-24
***********************************************************************/
//#include <adc1.h>
#include "main.h"
#include "usart.h"
#include "S1_main.h"
#include "adc1.h"
#include "battery.h"
#include "tim.h"
#include "ws2812.h"
#include "uart.h"
#include "stdio.h"


void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	if(htim == &htim14 ){
		set_current_adc_raw();             // 获取温度传感器数据;
	}
}

/**
 * @brief  标准闲置程序使机器保持活动状态
 */
void idle(){
 	bat_manage();
}



/**
 * @brief  定时器初始化
 *         PWM初始化
  *                开机检测
 */
void setup(void)
{
	uart_init();
	HAL_TIM_Base_Start_IT(&htim14);  /* 定时器必须等待系统稳定后才能使能，涉及到 ADC 采集 */
	ws281x_init();

	ws2812_low_power_style();

	HAL_Delay(1000);
	ws2812_blu_style();
}

void loop(void)
{
	idle();

	if(!battery_is_lowpower()){
		if(USART_RX_STA&0x8000){
			switch(USART_RX_BUF[0]){
				case 0:
					ws2812_blu_style();
					break;
				case 1:
					ws2812_org_style(); // 橙色
					break;
				case 2:
					ws2812_blu_style();
					break;
				case 3:
					ws2812_org_style(); // 橙色
					break;
				case 8:  // nopower test
					ws2812_low_power_style();
					HAL_Delay(1000);  // 模式保持5s
					HAL_Delay(1000);
					HAL_Delay(1000);
					HAL_Delay(1000);
					HAL_Delay(1000);
					ws2812_blu_style();
					break;
			};
			USART_RX_STA=0;
		}
	}
	else{
		printf("9\n");
		ws2812_low_power_style();
		while(1);
	}

}

