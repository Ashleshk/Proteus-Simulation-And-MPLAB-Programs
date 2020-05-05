//Expt.No.5 - Serial Communication with PC
//Includes
#include<P18F4550.h>
#include"vector_relocate.h"

//Function Prorotypes
void Txstring(unsigned char *str);
void Txdata(unsigned char var);

//Variables
unsigned char string1[]={"\n\r MCA \n\r"};
unsigned char string2[]={"\n\rSend 10 character to uC\n\r"};
unsigned char string3[]={"\n\rTransmitted :\n\r"};
 
void main()
{
	
	 unsigned char  i=0;
	 unsigned char rx_data [20];    //Buffer to store received data
	 
	 TRISCbits.TRISC7=1;           // RXD  input
	 TRISCbits.TRISC6=0;          // TXD output
	 SPBRG = 0xE1;
	 SPBRGH = 0x04;                 //  9600 baud 
	 TXSTA = 0x24;                    // TX enable BRGH=1   0010 0100 
	 RCSTA = 0x90;                      // continuous RX      1001 0000
	 BAUDCON = 0x08;               // BRG16 = 1   0000 1000
	 
	TXstring (string1);                    // Transmit string 1
	 
	 TXstring (string3);                    // Transmit string 3
	
for(i=0;i<10;i++)
	{
		while(PIR1bits.RCIF==0);   //wait fo data 
		var1[i]=RCREG;             // Read data
	}
	var1[10]='\0';
	TXstring (rx_data);                         //transmit recieved data
   while(1);
}


void Txstring(unsigned char *str)
{
	int i=0;
	while(str[i]!='\0')                          //string las element
	{
`		Txdata(str[i]);                      //put data
		i++;
	}
}

void Txdata(unsigned char var)
{
	while(TXSTAbits.TRMT==0);    //wait for recieved data
	TXREG=var;    //transmit data
}
