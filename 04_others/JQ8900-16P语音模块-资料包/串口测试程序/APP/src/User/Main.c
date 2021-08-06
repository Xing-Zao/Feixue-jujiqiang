#include "main.h"

bit bSysHalfSec;
u8 TimeWaitCnt = 0;

u8 code PrevFile[] = {0xAA, 0x05, 0x00, 0xAF};/*此数组指令可以直接由上位机生成，复制过来即可  */
u8 code NextFile[] = {0xAA, 0x06, 0x00, 0xB0};
u8 code Path[] = {0xAA, 0x08, 0x10, 0x02, 0x2F, 0xB9, 0xE3, 0xB8, 0xE6, 0x2A, 0x2F, 0xD0, 0xA1, 0xC3, 0xD7, 0x2A, 0x4D, 0x50, 0x33, 0x8B, }; // flash   /广告*/小米*MP3



/***************************************************************************************

本程序为MP3串口模块测试程序C51版本，测试芯片采用 STC12C5A32S2,外部晶振，11.0592MHZ
串口设置:9600



**************************************************************************************/

u8 UartData = 0xff;
/*****************************************************************************
 函 数 名  : Timer0Init
 功能描述  : 定时器初使化 定时2毫秒@11.0592MHz
 输入参数  : void
 输出参数  : 无
 返 回 值  :
 调用函数  :
 被调函数  :

 修改历史      :
  1.日    期   : 2013年3月26日
    作    者   : Blueice
    修改内容   : 新生成函数

*****************************************************************************/
void Timer0Init ( void )
{
    AUXR |= 0x80;		/*定时器时钟1T模式  */
    TMOD &= 0xF0;		/*设置定时器模式  */
    TMOD |= 0x01;		/*设置定时器模式  */
    TL0 = 0x9A;		    /*设置定时初值  */
    TH0 = 0xA9;		    /*设置定时初值  */
    TF0 = 0;		    /*清除TF0标志  */
    TR0 = 1;		    /*定时器0开始计时  */
    ET0 = 1;
}
/*****************************************************************************
 函 数 名  : SysInit
 功能描述  : 系统初使化
 输入参数  : void
 输出参数  : 无
 返 回 值  :
 调用函数  :
 被调函数  :

 修改历史      :
  1.日    期   : 2013年3月24日
    作    者   : Blueice
    修改内容   : 新生成函数

*****************************************************************************/
void SysInit ( void )
{
    Timer0Init();
    UartInit();
    EA = 1;/*开总中断  */
}
/*****************************************************************************
 函 数 名  : Delay1us
 功能描述  : 1微秒延时函数
 输入参数  : int T
 输出参数  : 无
 返 回 值  :
 调用函数  :
 被调函数  :

 修改历史      :
  1.日    期   : 2016年2月19日
    作    者   : wskblueice
    修改内容   : 新生成函数

*****************************************************************************/
void Delay1us ( int T )
{
    T = T - 70;
    do
    {
        ;
    }
    while ( T-- );
}
#define  sda   P01 /*一线串口发送引脚  */
/*****************************************************************************
 函 数 名  : SendData
 功能描述  : 一线串口发送函数
 输入参数  : u16 N
 输出参数  : 无
 返 回 值  :
 调用函数  :
 被调函数  :

 修改历史      :
  1.日    期   : 2014年8月17日
    作    者   : wskblueice
    修改内容   : 新生成函数

*****************************************************************************/
void SendData ( u8 addr )
{
    u8 i;

    EA = 0;/*发送时关掉中断，防止中断影响时序  */

    sda = 1;/*开始拉搞  */
    Delay1us ( 1000 );
    sda = 0;/*开始引导码*/
    Delay1us ( 2200 );/*此处延时最少要大于2ms，此参数延时为310ms  */

    for ( i = 0; i < 8; i++ ) /*总共8位数据  */
    {
        sda = 1;
        if ( addr & 0x01 ) /*3:1表示数据位1,每个位用两个脉冲表示  */
        {
            Delay1us ( 500 );
            sda = 0;
            Delay1us ( 210 );
        }
        else              /*1：3表示数据位0 ,每个位用两个脉冲表示  */
        {
            Delay1us ( 210 );
            sda = 0;
            Delay1us ( 500 );
        }
        addr >>= 1;
    }
    sda = 1;
    EA = 1;
}
/*****************************************************************************
 函 数 名  : UartSendData
 功能描述  : 两线串口发送指令
 输入参数  : u8 *Buff
 输出参数  : 无
 返 回 值  :
 调用函数  :
 被调函数  :

 修改历史      :
  1.日    期   : 2016年5月1日
    作    者   : wskblueice
    修改内容   : 新生成函数

*****************************************************************************/
void UartSendData ( u8 *Buff, u8 Len )
{
    u8 i;
    for ( i = 0 ; i < Len ; i++ )
    {
        UartPutByte ( Buff[i] );
    }
}
/*****************************************************************************
 函 数 名  : main
 功能描述  : 系统主循环
 输入参数  : void
 输出参数  : 无
 返 回 值  :
 调用函数  :
 被调函数  :

 修改历史      :
  1.日    期   : 2013年2月21日
    作    者   : Blueice
    修改内容   : 新生成函数

*****************************************************************************/
void main ( void )
{

    SysInit();



    P0M0 |= BIT ( 0 ) | BIT ( 1 );
    UartSendData ( Path, 20 );
    while ( 1 )
    {
        if ( TimeWaitCnt == 4 ) /*每隔两秒会自动发下一曲指令  */
        {
            TimeWaitCnt = 0;
            SendData ( 0x15 );//next file
            //UartSendData ( NextFile,4 );
        }
    }
}
/*****************************************************************************
 函 数 名  : tm0_isr
 功能描述  : 定时中断
 输入参数  : 无
 输出参数  : 无
 返 回 值  :
 调用函数  :
 被调函数  :

 修改历史      :
  1.日    期   : 2013年3月26日
    作    者   : Blueice
    修改内容   : 新生成函数

*****************************************************************************/
void Timer0_isr() interrupt 1
{
    static u8 TimeCnt;

    TL0 = 0x9A;		/*设置定时初值  */
    TH0 = 0xA9;		/*设置定时初值  */

    TimeCnt++;
    if ( ( TimeCnt % 5 ) == 0 )
    {


    }
    if ( ( TimeCnt % 250 ) == 0 )
    {
        TimeCnt = 0;
        bSysHalfSec = !bSysHalfSec;
        P00 = !P00;
        TimeWaitCnt++;
    }

}


