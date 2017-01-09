#define BaudRate 9600
#define MYUBRR (F_CPU / 16 / BaudRate ) - 1 

void serialBegin();
unsigned char serialCheckRxComplete(void);
unsigned char serialCheckTxReady(void);
unsigned char serialRead(void);
void serialWrite(unsigned char DataOut);
