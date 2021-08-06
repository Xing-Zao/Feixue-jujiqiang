/**
  * Copyright (c)   LonlyPan . 2020-2020. All rights reserved.
  * @file：   macro.h
  * @author： LonlyPan
  * @version：V1.0
  * @date：     2020-08-19
  * @brief：   全局宏定义
  * @attention：
  * @Modification:
  * @History:
  *   1.Version:
  *   Author:
  *     date:
  *     Modification:
  */


#ifndef MACROS_H_
#define MACROS_H_


typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;


#define millis() HAL_GetTick()
/* 专门用于 millis() 型变量声明 */
typedef unsigned long millis_t;


#define PI 3.14159265358979323846


#define min(a,b) ((a)<(b)?(a):(b))
#define max(a,b) ((a)>(b)?(a):(b))

#define constrain(amt,low,high) ((amt)<(low)?(low):((amt)>(high)?(high):(amt)))

#define PENDING(NOW,SOON) ((long)(NOW-(SOON))<0)
#define ELAPSED(NOW,SOON) (!PENDING(NOW,SOON))  /* NOW > SOON return true */

#define FABS(x)     fabs(x)



#endif /* MACROS_H_ */
