 #include<p18f4550.h>
#include"vector_relocate.h"
#define LCD_data PORTD
#define rs PORTEbits.RE0
#define rw PORTEbits.RE1
#define en PORTEbits.RE2


void ADC_INIT();
void LCD_INIT();
void START_CONVERSION();
void msdelay();
unsigned int GET_ADC_RESULT();
void LCD_COMMAND(unsigned char cmd);
void LCD_DATA(unsigned char data);
void LCD_WRITE_STRING(static char *str);
void main()
{
    char msg1[] ="welcome ";
     char msg2[] = "adc o/p";
     unsigned int adc_result;  
      int i=0;
    ADCON1=0x0f;
    TRISD=0x00;
    TRISE=0x00;

ADC_INIT();
LCD_INIT();
  LCD_WRITE_STRING(msg1);
LCD_COMMAND(0xC0);
LCD_WRITE_STRING(msg2);

while(1)
{
   START_CONVERSION();
   adc_result=GET_ADC_RESULT();
   LCD_COMMAND(0xC8);

   for(i=0;i<4;i++)'
   {

    LCD_DATA(adc_result);
   }
   msdelay(300);
  

}
}
void ADC_INIT()
{
   ADCON0=0b00001000;
   ADCON1=0b00001101;
   ADCON2=0b10001110;
   ADCON0bits.ADON=1;

}
void START_CONVERSION()
{
  ADCON0bits.GO=1;
}
unsigned int GET_ADC_RESULT()
{
   unsigned int adc_result=0;
   while(ADCON0bits.GO);
   adc_result=ADRESL;
   PORTD=ADRESL;
   adc_result |=  ((unsigned int)ADRESH) <<8;
return adc_result;

}
void LCD_INIT()
{
   LCD_COMMAND(0x38);
   msdelay(15);

   LCD_COMMAND(0x0C);
   msdelay(15);
   LCD_COMMAND(0x01);
   msdelay(15);
   LCD_COMMAND(0x80);
   msdelay(15);

}
void LCD_COMMAND(unsigned char cmd)
{ 
   LCD_data=cmd;
   rs=0;
  rw=0;
en=1;
msdelay(15);
en=0;

}
void LCD_DATA(unsigned char data)
{ 
   LCD_data=data;
   rs=1;++ 
  rw=0;
en=1;
msdelay(15);
en=0;

}
void LCD_WRITE_STRING(static char *str)
{
   int i=0;
   while(str[i] !=0)
{
   LCD_DATA(str[i]);
msdelay(15);
   i++;
 }
}
void msdelay(unsigned int time)
{
    int i,j;
   for(i=0;i<time;i++)
      for(j=0;j<710;j++);
}