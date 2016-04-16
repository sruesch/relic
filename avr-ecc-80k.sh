#!/bin/bash 
CC=avr-gcc CXX=avr-c++ LINK="-mmcu=atmega128 -Wl,-gc-sections" COMP="-O2 -ggdb -Wa,-mmcu=atmega128 -mmcu=atmega128 -ffunction-sections -fdata-sections" cmake -DCMAKE_SYSTEM_NAME=Generic -DARCH=AVR -DWORD=8 -DOPSYS=NONE_RELIC -DRAND=FIPS -DSEED=LIBC -DSHLIB=OFF -DSTBIN=ON -DTIMER=NONE_RELIC -DWITH="DV;MD;BN;FB;EB;EC" -DBENCH=10 -DTESTS=10 -DCHECK=off -DVERBS=off -DSTRIP=on -DQUIET=off -DCOLOR=off -DARITH=avr-asm-163 -DFB_POLYN=163 -DBN_METHD="COMBA;COMBA;BASIC;BASIC;STEIN;BASIC" -DFB_METHD="INTEG;INTEG;QUICK;BASIC;BASIC;BASIC;EXGCD;BASIC;BASIC" -DFB_PRECO=off -DFB_TRINO=off -DBN_PRECI=160 -DBN_MAGNI=DOUBLE -DEB_PRECO=on -DEB_METHD="PROJC;RWNAF;LWNAF;INTER" -DEB_MIXED=on -DEB_KBLTZ=on -DEB_PLAIN=off -DEC_METHD="CHAR2" -DMD_METHD=SHONE $1
