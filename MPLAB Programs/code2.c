  
			
//Includes
#include <p18f4550.h>		
#include "vector_relocate.h" 

//Declarations for LCD Connection
#define LCD_DATA    PORTB               //LCD data port
#define en          PORTEbits.RE2      // enable signal
#define rw          PORTEbits.RE1      // read/write signal
#define rs          PORTEbits.RE0     // register select signal
#define relay PORTCbits.RC0
#define ir_input  PORTAbits.RA0
#define ir_output    LATDbits.LATD5     // stopping the motor & and pump is on
#define motor1 PORTCbits.RC1 
#define motor2 PORTCbits.RC2

//Function Prototypes
void ADC_Init(void);					//Function to initialize the ADC
unsigned int Get_ADC_Result(void);		//Function to Get ADC result after conversion
void Start_Conversion(void);			//Function to Start of Conversion
void msdelay (unsigned int time);		//Function to generate delay
void init_LCD(void);					//Function to initialise the LCD		
void LCD_command(unsigned char cmd);	//Function to pass command to the LCD
void LCD_data(unsigned char data);		//Function to write character to the LCD
void LCD_write_string(static char *str);//Function to write string to the LCD
void ALL_PROCESS(void);
void Conveyor(unsigned int val);
void Pump(unsigned int val);
int IRSensing();
void levelsensing();
//void delay() ;//function to generate delay of 5 sec. for filling bottle when conveyer stops

char msg1_1[] = "BOTTLE FILLING ";
 char msg1_2[] = " PLANT";
 char msg2[] = "CREATED by K-5 ";
 char IRsensor_1[]="IR Sensor";
 char IRsensor_2[]="Active";
 char bottledetected[]="BOTTLE DETECTED...";
 char conveyorOFF[]="Conveyor OFF..";
 char conveyorON[]="Conveyor ON..";
 char PumpOFF[]="Pump OFF..";
 char PumpON[]="Pump ON..";
 char Filling[]="Filling Bottle";

unsigned int IRresult=1;
  unsigned int flag=0;
 
//Start of main program
void main()
{ 
 unsigned int key=5;
 
 char Invalid[]="Invalid..";
 unsigned char i, Thousands;
 unsigned int adc_val;

 ADCON1 = 0x0F;        //Configuring the PORT pins as digital I/O 
 TRISD = 0x0F;         //Configuring PORTD as input
 TRISE = 0x00;         //Configuring PORTE as output
 TRISC= 0x00;
 TRISB= 0x00;

 ADC_Init();				 
 init_LCD();				 
 LCD_write_string(msg1_1);	
 LCD_command(0xC0);			 
 LCD_write_string(msg1_2);
 LCD_command(0x01);
 LCD_write_string(msg2);	 
 
 
 while(1)
 {
    switch(key)
    {
        case 1:{                                   //Conveyor ON
				 LCD_command(0x01);			 
 				 LCD_write_string(conveyorON);
 					//TODO:: TURN ON CONVEYOR   >>>
				 break;
			   }
        case 2:{                                 //IR sensor Activity
                 LCD_command(0x01);			 
 				 LCD_write_string(IRsensor_1);
				 LCD_command(0xC0);			 
 				 LCD_write_string(IRsensor_2);
				 msdelay(100);
				//TODO :: TURN ON IR SENSOR >>>>
				 LCD_command(0x01); 			 
                 LCD_write_string(bottledetected);
				 msdelay(100);					//after detection .. Conveyor OFF
			     LCD_command(0x01);			 
				 LCD_write_string(conveyorOFF);
				 //TODO :: TURN OFF CONVEYOR >>>>
				 break;
			   }			
        case 3:{                               //turning ON pump..   and turn off pump as well
				 LCD_command(0x01);
				 LCD_write_string(PumpON);
				 LCD_command(0xC0);
				 LCD_write_string(Filling);
				 //msdelay(100);
				//TODO::   TURN ON PUMP >>>>
				//TODO::   PUT TIMER DELAY FOR FILLING BOTTLE ...... take from vedika .....or just use msdelay(500);..i.e " 5 sec ":
				  
				//TODO::   TURN OFF PUMP >>>>
				 LCD_command(0x01);
				 LCD_write_string(PumpOFF);                                 		 
				 break;	
			   } 
        case 4:{
				 LCD_command(0x01);			 
 				 LCD_write_string(conveyorON);
				 //TODO:: TURN ON CONVEYOR    >>>>
                 break;
			   }
        case 5:{
				 ALL_PROCESS();
				 break;
			   }
        default:{ 	
					LCD_command(0x01);
				    LCD_write_string(Invalid);
					break;
				}
    }
  	Start_Conversion();			//Trigger conversion
  	adc_val= Get_ADC_Result(); //Get the ADC output by polling GO bit
  
  	LCD_command (0xC8);			//Goto 9th place on second line of LCD
  	
	i = adc_val/1000 ;		//Get the thousands place 
  	Thousands = i + 0x30;		// Convert it to ASCII
  	LCD_data (Thousands);	// Display thousands place
  	 
  	msdelay(300);		
 }
}

//Function Definitions
void ADC_Init()
{
 ADCON0=0x08;	//A/D Module is OFF and Channel 2 is selected
 ADCON1=0x0C;	// Reference as VDD & VSS, AN1 set as analog pins
 ADCON2=0x8E;  
 ADCON0bits.ADON=1; //Turn ON ADC module
}

void Start_Conversion()
{
 ADCON0bits.GO=1;
}

 
unsigned int Get_ADC_Result()
{
 unsigned int ADC_Result=0;
 while(ADCON0bits.GO);
 ADC_Result=ADRESL;
 PORTD=ADRESL;
 msdelay(500);
 ADC_Result|=((unsigned int)ADRESH) << 8;
 return ADC_Result;
} 

void msdelay (unsigned int time)  
{
unsigned int i, j;
  for (i = 0; i < time; i++)
	for (j = 0; j < 710; j++);//Calibrated for a 1 ms delay  
}


void init_LCD(void)		 
{
    LCD_command(0x38);       
    msdelay(15);
    LCD_command(0x01);       
    msdelay(15);
    LCD_command(0x0C);       
    msdelay(15);
    LCD_command(0x80);       
    msdelay(15);
}

void LCD_command(unsigned char cmd)  
{
    LCD_DATA = cmd;		 
    rs = 0;				 
    rw = 0;				 
    en = 1;				 
    msdelay(15);
    en = 0;
}

void LCD_data(unsigned char data) 
{
    LCD_DATA = data;	 
    rs = 1;				 
    rw = 0;			 
    en = 1;			 
  	msdelay(15);
    en = 0;
}
//Function to write string to LCD
void LCD_write_string(static char *str)   
{
    int i = 0;
    while (str[i] != 0)
    {
        LCD_data(str[i]);       
        msdelay(15);
        i++;
    }
}
void ALL_PROCESS()
{
	 

    
	IRresult=IRSensing();
 

}
void Conveyor(unsigned int val)
{
   TRISCbits.TRISC1 = 0 ;	// Set PORTD, RD0 as output (DCM IN2)
	TRISCbits.TRISC2 = 0 ;	// Set PORTD, RD1 as output (DCM IN1)
	PR2 = 0xBA;             // set PWM Frequency 4KHz  
    CCP1CON = 0x0C;         // Configure CCP1CON as PWM mode.
 	T2CON = 0x07;		//Start timer 2 with prescaler 1:16
	motor1 = !val;	// Turn ON the Motor
    motor2 = 0;
   if(val==1)
   {
	LCD_command(0x01);			 
	LCD_write_string(conveyorON);
    //TODO ::  CONVEYOR ON
     CCP1CONbits.DC1B0 = 0;
		CCP1CONbits.DC1B1 = 0;
		CCPR1L = 0xBB;
   }
   if(val==2)
	{
     LCD_command(0x01);			 
	 LCD_write_string(conveyorOFF);
    //TODO :: PCONVEYOR OFF
    }
}
void Pump(unsigned int val)
{
  if(val==1)
	{			
	     LCD_command(0x01);
	     LCD_write_string(PumpON);
		 LCD_command(0xC0);
		 LCD_write_string(Filling);
		 msdelay(100);
         // :: PUMP ON
           relay=1;
	       msdelay(4000);      //pump on for 4 seconds
	       relay=0;
	       msdelay(500);
 
     LCD_command(0x01);
	 LCD_write_string(PumpOFF);  
    
  }
}
int IRSensing()
{
     
OSCCONbits.IRCF0 = 1 ;               // set internal clock to 8 MHz
OSCCONbits.IRCF1 = 1;                //  For Avoiding switch debouncing problem      
OSCCONbits.IRCF2= 1;                 //

/* Input output settings*/

       TRISDbits.TRISD2 = 1;                  //   RA0 Input for taking input from IR sensor

       //TRISDbits.TRISD5 = 0;                  // Port D pins output
       
       CMCON = 0x07;           // Disable Comparator
       ADCON1bits.PCFG0 = 1;          // These 4 settings below determines the analog or digital input
       ADCON1bits.PCFG1 = 1;          // In our case we are making all the pins digital
       ADCON1bits.PCFG2 = 1;         // by setting them as 1111
       ADCON1bits.PCFG3 = 1;         // Check with the datasheet for a nice desc of these bits and config.

       ADCON0bits.ADON = 0;  //  Disabled ADC


  	 LCD_command(0x01);			 
	 LCD_write_string(IRsensor_1);
	 LCD_command(0xC0);			 
 	 LCD_write_string(IRsensor_2);
	 msdelay(100);

  //TODO:: IR Code
	 while(1)
     {   //Forever Loop
            if(ir_input == 1)    //   On reading IR sensor value ON
                    {  
               ir_output=1;
				Conveyor(ir_output);
				msdelay(2000);
				Pump(ir_output);
				msdelay(2000);


             }
       else if ( ir_input == 0) // On reading IR Sensor Value OFF
             {   //Turn led off
               ir_output=0;
              Conveyor(ir_output);
			  msdelay(2000);
			  Pump(ir_output);
              msdelay(2000); 
            }
        else {    }
    }  
   return 1;
}
void levelsensing()
{
	 
	TRISDbits.TRISD0=1;    //high level input
	TRISDbits.TRISD1=1;    //low level input
	//TRISCbits.TRISC2=0;    //high level output
	//TRISCbits.TRISC4=0;   //low level output
   
	if(PORTDbits.RD0==1 && PORTDbits.RD1==1)  //high level
	{
	flag=1;
	} 
	if(PORTDbits.RD0==0 && PORTDbits.RD1==0)  //low level
	{
	flag=2;
	}
	if(flag==1)
	{
	PORTCbits.RC2=1;
	PORTCbits.RC4=0;
	}
	if(flag==2)
	{
	PORTCbits.RC2=0;
	PORTCbits.RC4=1;
	}
	if(flag==0)
	{
	PORTCbits.RC2=0;
	PORTCbits.RC4=0;
	}
} 