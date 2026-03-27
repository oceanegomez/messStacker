#ifndef MESSSTACKER
#define MESSSTACKER


#define MESS_STAKER_VERSION "v0.0.01"   // Version de ma librairie

#define IZE_MAX_DATA 57 

const char* getMessStackerVersion(void);

bool sendMessage(uint8_t  cmd, char data[SIZE_MAX_DATA], uint8_t size);

bool haveMessage(void);

bool nextMessage(void);

uint8_t curMessageCmd(void);

uint8_t curMessageSize(void);

uint8_t curMessageChecksum(void);

bool curMessageData(int lenghtMax, char buff);

uint8_t checksumMessage(uint8_t  cmd, char data[SIZE_MAX_DATA], uint8_t size);

#endif