/*
 * uart.h
 *
 *  Created on: Jul 13, 2021
 *      Author: 23714
 */

#ifndef UART_H_
#define UART_H_

#include "usart.h"

#define USART_REC_LEN  			200  		//定义最大接收字节数 200

extern uint8_t  USART_RX_BUF[USART_REC_LEN]; 	//接收缓冲,最大USART_REC_LEN个字节.末字节为换行符
extern uint16_t USART_RX_STA;         			//接收状态标记

void uart_init();

#endif /* UART_H_ */
