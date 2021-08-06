/*
 * uart.c
 *
 *  Created on: Jul 13, 2021
 *      Author: 23714
 */

#include "uart.h"

//串口1中断服务程序
//注意,读取USARTx->SR能避免莫名其妙的错误
uint8_t USART_RX_BUF[USART_REC_LEN];     //接收缓冲,最大USART_REC_LEN个字节.
//接收状态
//bit15，	接收完成标志
//bit14，	接收到0x0d
//bit13~0，	接收到的有效字节数目
uint16_t USART_RX_STA=0;       //接收状态标记
uint8_t aRxBuffer[1];//HAL库使用的串口接收缓冲


/**
  * @brief 串口初始化，启动接收中断
  */
void uart_init()
{
	HAL_UART_Receive_IT(&huart1,(uint8_t *)aRxBuffer,1);  //开启中断
}


/**
  * @brief 串口接收中断，每接收一个字节中断一次
  */
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *UartHandle)
{
	if(UartHandle->Instance == USART1){   //判断时那种中断

		if((USART_RX_STA&0x8000)==0)//接收未完成
		{
			if(USART_RX_STA&0x4000)//接收到了0x0d
			{
				if(aRxBuffer[0]!=0x0a)USART_RX_STA=0;//接收错误,重新开始
				else USART_RX_STA|=0x8000;	//接收完成了
			}
			else //还没收到0X0D
			{
				if(aRxBuffer[0]==0x0d)USART_RX_STA|=0x4000;
				else
				{
					USART_RX_BUF[USART_RX_STA&0X3FFF]=aRxBuffer[0] ;
					USART_RX_STA++;
					if(USART_RX_STA>(USART_REC_LEN-1))USART_RX_STA=0;//接收数据错误,重新开始接收
				}
			}
		}
	}
	HAL_UART_Receive_IT(&huart1,(uint8_t *)aRxBuffer,1); // 再次开启中断
}


/**
  * @brief 重定向c库函数printf到USARTx
  * @retval None
  */
#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)  /* 防止重定义，具体为什么会用到GNUC我以为不知道*/
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif
PUTCHAR_PROTOTYPE{
	 HAL_UART_Transmit(&huart1,(uint8_t *)&ch,1,1000);
     return ch;
}
