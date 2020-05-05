#line 1 "espmodule_code.c"
#line 1 "espmodule_code.c"
#line 2 "espmodule_code.c"

#line 4 "espmodule_code.c"
#line 5 "espmodule_code.c"
#line 6 "espmodule_code.c"
#line 7 "espmodule_code.c"
#line 8 "espmodule_code.c"
#line 9 "espmodule_code.c"


#line 1 "./esp8266_functions.h"

#line 36 "./esp8266_functions.h"
 





#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdio.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdio.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdarg.h"
 


#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdarg.h"

typedef void* va_list;
#line 8 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdarg.h"
#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdarg.h"
#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdarg.h"
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdarg.h"
#line 12 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdarg.h"
#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdio.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stddef.h"
 

#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stddef.h"

typedef unsigned char wchar_t;


#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stddef.h"
 
typedef signed short int ptrdiff_t;
typedef signed short int ptrdiffram_t;
typedef signed short long int ptrdiffrom_t;


#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stddef.h"
 
typedef unsigned short int size_t;
typedef unsigned short int sizeram_t;
typedef unsigned short long int sizerom_t;


#line 34 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stddef.h"
 
#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stddef.h"


#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stddef.h"
 
#line 43 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stddef.h"

#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stddef.h"
#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdio.h"



#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdio.h"
 
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdio.h"

#line 13 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdio.h"


typedef unsigned char FILE;

 
#line 19 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdio.h"
#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdio.h"

extern FILE *stderr;
extern FILE *stdout;


int putc (auto char c, auto FILE *f);
int vsprintf (auto char *buf, auto const far  rom char *fmt, auto va_list ap);
int vprintf (auto const far  rom char *fmt, auto va_list ap);
int sprintf (auto char *buf, auto const far  rom char *fmt, ...);
int printf (auto const far  rom char *fmt, ...);
int fprintf (auto FILE *f, auto const far  rom char *fmt, ...);
int vfprintf (auto FILE *f, auto const far  rom char *fmt, auto va_list ap);
int puts (auto const far  rom char *s);
int fputs (auto const far  rom char *s, auto FILE *f);

#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/stdio.h"
#line 42 "./esp8266_functions.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"

#line 7 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"


#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
#line 22 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"


#line 25 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
#line 27 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"

 

#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
void *memcpy (auto void *s1, auto const void *s2, auto size_t n);


#line 55 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
void *memmove (auto void *s1, auto const void *s2, auto size_t n);


#line 67 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strcpy (auto char *s1, auto const char *s2);


#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strncpy (auto char *s1, auto const char *s2, auto size_t n);


#line 97 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strcat (auto char *s1, auto const char *s2);


#line 113 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strncat (auto char *s1, auto const char *s2, auto size_t n);


#line 128 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
signed char memcmp (auto const void *s1, auto const void *s2, auto size_t n);


#line 141 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
signed char strcmp (auto const char *s1, auto const char *s2);


#line 147 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 


#line 161 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
signed char strncmp (auto const char *s1, auto const char *s2, auto size_t n);


#line 167 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 


#line 183 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
void *memchr (auto const void *s, auto unsigned char c, auto size_t n);


#line 199 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strchr (auto const char *s, auto unsigned char c);


#line 210 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
size_t strcspn (auto const char *s1, auto const char *s2);


#line 222 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strpbrk (auto const char *s1, auto const char *s2);


#line 238 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strrchr (auto const char *s, auto unsigned char c);


#line 249 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
size_t strspn (auto const char *s1, auto const char *s2);


#line 262 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strstr (auto const char *s1, auto const char *s2);


#line 305 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strtok (auto char *s1, auto const char *s2);


#line 321 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
void *memset (auto void *s, auto unsigned char c, auto size_t n);


#line 339 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
#line 341 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"


#line 349 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
size_t strlen (auto const char *s);


#line 358 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strupr (auto char *s);


#line 367 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strlwr (auto char *s);



 

#line 379 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom void *memcpypgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 389 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
void *memcpypgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 398 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom void *memcpyram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 407 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom void *memmovepgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 417 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
void *memmovepgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 426 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom void *memmoveram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 434 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strcpypgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 443 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strcpypgm2ram (auto char *s1, auto const far  rom char *s2);


#line 451 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strcpyram2pgm (auto far  rom char *s1, auto const char *s2);


#line 460 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strncpypgm (auto far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 470 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strncpypgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 479 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strncpyram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 487 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strcatpgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 496 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strcatpgm2ram (auto char *s1, auto const far  rom char *s2);


#line 504 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strcatram2pgm (auto far  rom char *s1, auto const char *s2);


#line 513 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strncatpgm (auto far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 523 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strncatpgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 532 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strncatram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 541 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
signed char memcmppgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 551 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
signed char memcmppgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 560 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
signed char memcmpram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 568 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
signed char strcmppgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 577 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
signed char strcmppgm2ram (auto const char *s1, auto const far  rom char *s2);


#line 585 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
signed char strcmpram2pgm (auto const far  rom char *s1, auto const char *s2);


#line 594 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
signed char strncmppgm (auto const far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 604 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
signed char strncmppgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 613 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
signed char strncmpram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 622 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *memchrpgm (auto const far  rom char *s, auto const unsigned char c, auto sizerom_t n);


#line 631 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strchrpgm (auto const far  rom char *s, auto unsigned char c);


#line 639 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
sizerom_t strcspnpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 647 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
sizerom_t strcspnpgmram (auto const far  rom char *s1, auto const char *s2);


#line 655 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
sizeram_t strcspnrampgm (auto const char *s1, auto const far  rom char *s2);


#line 663 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strpbrkpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 671 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strpbrkpgmram (auto const far  rom char *s1, auto const char *s2);


#line 679 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strpbrkrampgm (auto const char *s1, auto const far  rom char *s2);


#line 688 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
 


#line 696 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
sizerom_t strspnpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 704 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
sizerom_t strspnpgmram (auto const far  rom char *s1, auto const char *s2);


#line 712 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
sizeram_t strspnrampgm (auto const char *s1, auto const far  rom char *s2);


#line 720 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strstrpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 729 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strstrpgmram (auto const far  rom char *s1, auto const char *s2);


#line 737 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strstrrampgm (auto const char *s1, auto const far  rom char *s2);


#line 745 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strtokpgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 754 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
char *strtokpgmram (auto char *s1, auto const far  rom char *s2);


#line 762 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strtokrampgm (auto far  rom char *s1, auto const char *s2);


#line 771 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom void *memsetpgm (auto far  rom void *s, auto unsigned char c, auto sizerom_t n);


#line 778 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *struprpgm (auto far  rom char *s);


#line 785 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
far  rom char *strlwrpgm (auto far  rom char *s);


#line 792 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
 
sizerom_t strlenpgm (auto const far  rom char *s);

#line 796 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"

#line 798 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"

#line 805 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
#line 814 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"

#line 816 "C:/Program Files (x86)/Microchip/mplabc18/v3.45/h/string.h"
#line 43 "./esp8266_functions.h"



#line 47 "./esp8266_functions.h"
#line 48 "./esp8266_functions.h"

#line 50 "./esp8266_functions.h"
#line 51 "./esp8266_functions.h"

#line 53 "./esp8266_functions.h"
#line 54 "./esp8266_functions.h"
#line 55 "./esp8266_functions.h"
#line 56 "./esp8266_functions.h"
#line 57 "./esp8266_functions.h"
#line 58 "./esp8266_functions.h"

int len;



void _esp8266_putch(unsigned char);
unsigned char _esp8266_getch(void);
 
bit esp8266_isStarted(void);        
bit esp8266_restart(void);          
void esp8266_echoCmds(bool);        

void esp8266_mode(unsigned char);

void esp8266_connect(unsigned char*, unsigned char*);

void esp8266_disconnect(void);

void esp8266_ip(char*);

bit esp8266_start(unsigned char protocol, char* ip, unsigned char port);

bit esp8266_send(unsigned char*);

void esp8266_receive(unsigned char*, uint16_t, bool);
 

void _esp8266_print(unsigned const char *);

inline uint16_t _esp8266_waitFor(unsigned char *);

inline unsigned char _esp8266_waitResponse(void);
void Lcd_Set_Cursor(char , char b);
void Lcd_Print_Char(char);
void Lcd_Print_String(char *);
void _esp8266_login_mail(unsigned char*, unsigned char*);
void _esp8266_mail_sendID(unsigned char*);
void _esp8266_mail_recID(unsigned char*);
void _esp8266_mail_subject(unsigned char*);
void _esp8266_mail_body(unsigned char*);








void Initialize_ESP8266(void)
{
    
    TRISC6 = 0; 
    TRISC7 = 1; 
    
    
    
#line 114 "./esp8266_functions.h"
 
    SPBRG = 10;
    BRGH  = 1;  
    
    
    
    SYNC  = 0;    
    SPEN  = 1;    
    
    
    TXEN  = 1;    
    CREN  = 1;    
    
    
    
    TX9   = 0;    
    RX9   = 0;    
    
}




 

void _esp8266_putch(char bt)  
{
    while(!TXIF);  
    TXREG = bt; 
}



 

char _esp8266_getch()   
{
    if(OERR) 
    {
        CREN = 0; 
        CREN = 1; 
    }
    
    while(!RCIF);  
    
    return RCREG; 
}

 




void ESP8266_send_string(char* st_pt)
{
    while(*st_pt) 
        _esp8266_putch(*st_pt++); 
}






unsigned char esp8266_config_softAP(unsigned char* softssid, unsigned char* softpass) {
    _esp8266_print("AT+CWSAP=\"");
    _esp8266_print(softssid);
    _esp8266_print("\",\"");
    _esp8266_print(softpass);
    _esp8266_print("\",5,3\r\n");
    return _esp8266_waitResponse();
}






 void esp8266_get_stationIP()
    {
    char rex;
    ESP8266_send_string("AT+CWLIF\r\n");
    Lcd_Set_Cursor(1,1);
    Lcd_Print_String("IP:");
    do
    {
    rex = _esp8266_getch() ;
    Lcd_Print_Char(rex);
    }while(rex!=',');
    Lcd_Set_Cursor(2,1);
    Lcd_Print_String("MAC:");
    do
    {
    rex = _esp8266_getch() ;
    Lcd_Print_Char(rex);
    }while(rex!='O');
    }
 
 

 
 
 void _esp8266_enale_MUX()
 {
 _esp8266_print("AT+CIPMUX=1\r\n"); 
 _esp8266_waitResponse();
 }
  
 
 
  
 void _esp8266_create_server()
 {
    _esp8266_print("AT+CIPSERVER=1,80\r\n"); 
    _esp8266_waitResponse(); 
 }
  
 
 
 
  
 void _esp8266_start_mail()
 {
    _esp8266_print("AT+CIPSEND=4,6\r\n");
    _esp8266_waitResponse();
    _esp8266_print("DATA\r\n");
    _esp8266_waitResponse();
 }
  
 
 
  
 void _esp8266_End_mail()
 {
    _esp8266_print("AT+CIPSEND=4,3\r\n");
    _esp8266_waitResponse();
    _esp8266_print(".\r\n");
    _esp8266_waitResponse();
 }
  
 
  
 void _esp8266_disconnect_SMPT2GO()
 {
    _esp8266_print("AT+CIPSEND=4,6\r\n");
    _esp8266_waitResponse();
    _esp8266_print("QUIT\r\n");
    _esp8266_waitResponse();
 }
  
 
 
 

  
 void _esp8266_connect_SMPT2GO()
 {
    _esp8266_print("AT+CIPSTART=4,\"TCP\",\"mail.smtp2go.com\",2525\r\n");
    _esp8266_waitResponse();
    _esp8266_print("AT+CIPSEND=4,20\r\n");
    _esp8266_waitResponse();
    _esp8266_print("EHLO 192.168.1.123\r\n");
    _esp8266_waitResponse();
    _esp8266_print("AT+CIPSEND=4,12\r\n");
    _esp8266_waitResponse();
    _esp8266_print("AUTH LOGIN\r\n");
    _esp8266_waitResponse();
 }
     
 
  
    
#line 290 "./esp8266_functions.h"
 
 void _esp8266_login_mail(unsigned char* mail_ID, unsigned char* mail_Pas) {
     len = strlen(mail_ID);
     len+= 2;
     char l2 = len%10;
     char l1 = (len/10)%10;
     
     _esp8266_print("AT+CIPSEND=4,");
     if ((l1+'0')>'0')
     _esp8266_putch(l1+'0');
     _esp8266_putch(l2+'0');
    _esp8266_print("\r\n");
    _esp8266_waitResponse();
    
    _esp8266_print(mail_ID);
    _esp8266_print("\r\n");
    _esp8266_waitResponse();
    
    len = strlen(mail_Pas);
    len+= 2;
    char l2 = len%10;
    char l1 = (len/10)%10;
     
    _esp8266_print("AT+CIPSEND=4,");
    if ((l1+'0')>'0')
    _esp8266_putch(l1+'0');
    _esp8266_putch(l2+'0');
    _esp8266_print("\r\n");
    _esp8266_waitResponse();
    
    
   _esp8266_print(mail_Pas);
    _esp8266_print("\r\n");
    _esp8266_waitResponse();
}
  
 
 
 void _esp8266_mail_sendID(unsigned char* send_ID)
 {
     len = strlen(send_ID);
     len+= 14;
     char l2 = len%10;
     char l1 = (len/10)%10;
     
     _esp8266_print("AT+CIPSEND=4,");
     if ((l1+'0')>'0')
     _esp8266_putch(l1+'0');
     _esp8266_putch(l2+'0');
    _esp8266_print("\r\n");
    _esp8266_waitResponse();
    
    _esp8266_print("MAIL FROM:<");
    _esp8266_print(send_ID);
    _esp8266_print(">\r\n");
    _esp8266_waitResponse();   
 } 
 
 
  void _esp8266_mail_recID(unsigned char* rec_ID)
 {
     len = strlen(rec_ID);
     len+= 12;
     char l2 = len%10;
     char l1 = (len/10)%10;
     
     _esp8266_print("AT+CIPSEND=4,");
     if ((l1+'0')>'0')
     _esp8266_putch(l1+'0');
     _esp8266_putch(l2+'0');
    _esp8266_print("\r\n");
    _esp8266_waitResponse();
    
    _esp8266_print("RCPT To:<");
    _esp8266_print(rec_ID);
    _esp8266_print(">\r\n");
    _esp8266_waitResponse();   
 } 
  
    void _esp8266_mail_subject(unsigned char* subject)
 {
     len = strlen(subject);
     len+= 10;
     char l2 = len%10;
     char l1 = (len/10)%10;
     
     _esp8266_print("AT+CIPSEND=4,");
     if ((l1+'0')>'0')
     _esp8266_putch(l1+'0');
     _esp8266_putch(l2+'0');
    _esp8266_print("\r\n");
    _esp8266_waitResponse();
    
    _esp8266_print("Subject:");
    _esp8266_print(subject);
    _esp8266_print("\r\n");
    _esp8266_waitResponse();   
 } 
    
    
    
        void _esp8266_mail_body(unsigned char* body)
 {
     len = strlen(body);
     len+= 2;
     char l2 = len%10;
     char l1 = (len/10)%10;
     
     _esp8266_print("AT+CIPSEND=4,");
     if ((l1+'0')>'0')
     _esp8266_putch(l1+'0');
     _esp8266_putch(l2+'0');
    _esp8266_print("\r\n");
    _esp8266_waitResponse();
    
    _esp8266_print(body);
    _esp8266_print("\r\n");
    _esp8266_waitResponse();   
 } 
 
 
 
 
 
 
 
 
 
 

#line 425 "./esp8266_functions.h"
 
bit esp8266_isStarted(void) {
    _esp8266_print("AT\r\n");
    return (_esp8266_waitResponse() == 1 );
}


#line 438 "./esp8266_functions.h"
 
bit esp8266_restart(void) {
    _esp8266_print("AT+RST\r\n");
    if (_esp8266_waitResponse() != 1 ) {
        return false;
    }
    return (_esp8266_waitResponse() == 2 );
}


#line 456 "./esp8266_functions.h"
 
void esp8266_echoCmds(bool echo) {
    _esp8266_print("ATE");
    if (echo) {
        _esp8266_putch('1');
    } else {
        _esp8266_putch('0');
    }
    _esp8266_print("\r\n");
    _esp8266_waitFor("OK");
}


#line 477 "./esp8266_functions.h"
 
void esp8266_mode(unsigned char mode) {
    _esp8266_print("AT+CWMODE=");
    _esp8266_putch(mode + '0');
    _esp8266_print("\r\n");
    _esp8266_waitResponse();
}


#line 493 "./esp8266_functions.h"
 
void esp8266_connect(unsigned char* ssid, unsigned char* pass) {
    _esp8266_print("AT+CWJAP=\"");
    _esp8266_print(ssid);
    _esp8266_print("\",\"");
    _esp8266_print(pass);
    _esp8266_print("\"\r\n");
    _esp8266_waitResponse();
}


#line 507 "./esp8266_functions.h"
 
void esp8266_disconnect(void) {
    _esp8266_print("AT+CWQAP\r\n");
    _esp8266_waitFor("OK");
}


#line 523 "./esp8266_functions.h"
 
void esp8266_ip(unsigned char* store_in) {
    _esp8266_print("AT+CIFSR\r\n");
    unsigned char received;
    do {
        received = _esp8266_getch();
    } while (received < '0' || received > '9');
    for (unsigned char i = 0; i < 4; i++) {
        store_in[i] = 0;
        do {
            store_in[i] = 10 * store_in[i] + received - '0';
            received = _esp8266_getch();
        } while (received >= '0' && received <= '9');
        received = _esp8266_getch();
    }
    _esp8266_waitFor("OK");
}


#line 551 "./esp8266_functions.h"
 
bit esp8266_start(unsigned char protocol, char* ip, unsigned char port) {
    _esp8266_print("AT+CIPSTART=\"");
    if (protocol == 1 ) {
        _esp8266_print("TCP");
    } else {
        _esp8266_print("UDP");
    }
    _esp8266_print("\",\"");
    _esp8266_print(ip);
    _esp8266_print("\",");
    unsigned char port_str[5] = "\0\0\0\0";
    sprintf(port_str, "%u", port);
    _esp8266_print(port_str);
    _esp8266_print("\r\n");
    if (_esp8266_waitResponse() != 1 ) {
        return 0;
    }
    if (_esp8266_waitResponse() != 5 ) {
        return 0;
    }
    return 1;
}



#line 584 "./esp8266_functions.h"
 
bit esp8266_send(unsigned char* data) {
    unsigned char length_str[6] = "\0\0\0\0\0";
    sprintf(length_str, "%u", strlen(data));
    _esp8266_print("AT+CIPSEND=");
    _esp8266_print(length_str);
    _esp8266_print("\r\n");
    while (_esp8266_getch() != '>');
    _esp8266_print(data);
    if (_esp8266_waitResponse() == 1 ) {
        return 1;
    }
    return 0;
}


#line 609 "./esp8266_functions.h"
 
void esp8266_receive(unsigned char* store_in, uint16_t max_length, bool discard_headers) {
    _esp8266_waitFor("+IPD,");
    uint16_t length = 0;
    unsigned char received = _esp8266_getch();
    do {
        length = length * 10 + received - '0';
        received = _esp8266_getch();
    } while (received >= '0' && received <= '9');

    if (discard_headers) {
        length -= _esp8266_waitFor("\r\n\r\n");
    }

    if (length < max_length) {
        max_length = length;
    }

    
#line 628 "./esp8266_functions.h"
 

    uint16_t i;
    for (i = 0; i < max_length; i++) {
        store_in[i] = _esp8266_getch();
    }
    store_in[i] = 0;
    for (; i < length; i++) {
        _esp8266_getch();
    }
    _esp8266_waitFor("OK");
}


#line 647 "./esp8266_functions.h"
 
void _esp8266_print(unsigned const char *ptr) {
    while (*ptr != 0) {
        _esp8266_putch(*ptr++);
    }
}


#line 663 "./esp8266_functions.h"
 
inline uint16_t _esp8266_waitFor(unsigned char *string) {
    unsigned char so_far = 0;
    unsigned char received;
    uint16_t counter = 0;
    do {
        received = _esp8266_getch();
        counter++;
        if (received == string[so_far]) {
            so_far++;
        } else {
            so_far = 0;
        }
    } while (string[so_far] != 0);
    return counter;
}


#line 697 "./esp8266_functions.h"
 
inline unsigned char _esp8266_waitResponse(void) {
    unsigned char so_far[6] = {0,0,0,0,0,0};
    unsigned const char lengths[6] = {2,5,4,9,6,6};
    unsigned const char* strings[6] = {"OK", "ready", "FAIL", "no change", "Linked", "Unlink"};
    unsigned const char responses[6] = {1 , 2 , 3 , 4 , 5 , 6 };
    unsigned char received;
    unsigned char response;
    bool continue_loop = true;
    while (continue_loop) {
        received = _esp8266_getch();
        for (unsigned char i = 0; i < 6; i++) {
            if (strings[i][so_far[i]] == received) {
                so_far[i]++;
                if (so_far[i] == lengths[i]) {
                    response = responses[i];
                    continue_loop = false;
                }
            } else {
                so_far[i] = 0;
            }
        }
    }
    return response;
}
#line 11 "espmodule_code.c"


#pragma config FOSC = HS        
#pragma config WDTE = OFF       
#pragma config PWRTE = OFF       
#pragma config BOREN = ON       
#pragma config LVP = OFF        
#pragma config CPD = OFF        
#pragma config WRT = OFF        
#pragma config CP = OFF         

 


void Lcd_SetBit(char data_bit) 
{
    if(data_bit& 1) 
        RD4  = 1;
    else
        RD4  = 0;

    if(data_bit& 2)
        RD5  = 1;
    else
        RD5  = 0;

    if(data_bit& 4)
        RD6  = 1;
    else
        RD6  = 0;

    if(data_bit& 8) 
        RD7  = 1;
    else
        RD7  = 0;
}

void Lcd_Cmd(char a)
{
    RD2  = 0;           
    Lcd_SetBit(a); 
    RD3   = 1;         
        __delay_ms(4);
        RD3   = 0;         
}

Lcd_Clear()
{
    Lcd_Cmd(0); 
    Lcd_Cmd(1); 
}

void Lcd_Set_Cursor(char a, char b)
{
    char temp,z,y;
    if(a== 1)
    {
      temp = 0x80 + b - 1; 
        z = temp>>4; 
        y = temp & 0x0F; 
        Lcd_Cmd(z); 
        Lcd_Cmd(y); 
    }
    else if(a== 2)
    {
        temp = 0xC0 + b - 1;
        z = temp>>4; 
        y = temp & 0x0F; 
        Lcd_Cmd(z); 
        Lcd_Cmd(y); 
    }
}

void Lcd_Start()
{
  Lcd_SetBit(0x00);
  for(int i=1065244; i<=0; i--)  NOP();  
  Lcd_Cmd(0x03);
    __delay_ms(5);
  Lcd_Cmd(0x03);
    __delay_ms(11);
  Lcd_Cmd(0x03); 
  Lcd_Cmd(0x02); 
  Lcd_Cmd(0x02); 
  Lcd_Cmd(0x08); 
  Lcd_Cmd(0x00); 
  Lcd_Cmd(0x0C); 
  Lcd_Cmd(0x00); 
  Lcd_Cmd(0x06);
}

void Lcd_Print_Char(char data)  
{
   char Lower_Nibble,Upper_Nibble;
   Lower_Nibble = data&0x0F;
   Upper_Nibble = data&0xF0;
   RD2  = 1;             
   Lcd_SetBit(Upper_Nibble>>4);             
   RD3  = 1;
   for(int i=2130483; i<=0; i--)  NOP(); 
   RD3  = 0;
   Lcd_SetBit(Lower_Nibble); 
   RD3  = 1;
   for(int i=2130483; i<=0; i--)  NOP();
   RD3  = 0;
}

void Lcd_Print_String(char *a)
{
    int i;
    for(i=0;a[i]!='\0';i++)
       Lcd_Print_Char(a[i]);  
}


 

void main()
{
    TRISD = 0x00;
    Lcd_Start();
    Initialize_ESP8266() ; 
    Lcd_Set_Cursor(1,1);
    Lcd_Print_String("Circuit Digest");
    Lcd_Set_Cursor(2,1);
    Lcd_Print_String("ESP5266 with PIC");
    __delay_ms(1500);
    Lcd_Clear();
    
     
    do
    {
    Lcd_Set_Cursor(1,1);
    Lcd_Print_String("ESP not found");
    }while (!esp8266_isStarted()); 
    Lcd_Set_Cursor(1,1);
    Lcd_Print_String("ESP is connected");
    __delay_ms(1500);
    Lcd_Clear();
     
    
     
    esp8266_mode(2);
    Lcd_Set_Cursor(1,1);
    Lcd_Print_String("ESP set as AP");
    __delay_ms(1500);
    Lcd_Clear();
     
    
     
    esp8266_config_softAP("CircuitDigest","619007123");
    Lcd_Set_Cursor(1,1);
    Lcd_Print_String("AP configured");
    __delay_ms(1500);
     
    
   
            
    while(1)
    {
        
    }

}