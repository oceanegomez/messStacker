/* ======================== Bibliothèques utilisées ========================= */
#include "messStacker.h"

#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>


const char* getMessStackerVersion(void) {
     /* 
     retourne le numéro de la version actuelle
     */
    return MESS_STAKER_VERSION ;
}


// ==============================================================================================================
typedef struct {
    uint8_t  cmd;  // entier non signé sur 8 bits
    char     data[SIZE_MAX_DATA];   // tableau de 8 octets
    uint8_t  size;  // entier non signé sur 8 bits
    uint8_t  checksum;  // entier non signé sur 8 bits
} Message; 
// ==============================================================================================================


