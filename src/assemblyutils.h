#ifndef ASSEMBLY_UTILS_H
#define ASSEMBLY_UTILS_H

/***************************************************************
 * countBits32
 * RECEIVES an 32 bit unsigned integer variable, and count how 
 * many seted bits have.
 * RETURNS the total count of seted bits.
 */
extern "C" unsigned int countBits32(unsigned int);

/***************************************************************
 * isEven
 * RECEIVES an 32 bit signed or unsigned variable, and verify
 * if is even. 
 * RETURNS true if is Even.
 */
//extern "C" bool isEven(unsigned int);

/***************************************************************
 * factorial
 * RECEIVES the an 32 bit unsigned integer to computed.
 * RETURNS the factorial of N
 */
//extern "C" unsigned int factorial(unsigned int);

/***************************************************************
 * isStrEqual
 * RECEIVES two string pointers, and the length to be compared
 * RETURNS true if the length is equal, otherwise, false.
 */
 //extern "C" bool isStrEqual(char*, char*, unsigned int);
 
 /***************************************************************
 * memCpy
 * RECEIVES two pointers to be copied and the length in bytes.
 * RETURNS Nothing
 */
 //extern "C" void memCpy(void*, void*, unsigned int);
 
  /***************************************************************
 * intDiv
 * RECEIVES the dividend, divisor and a pointer to remainder
 * Performs an integer division, alwals round for more.
 * RETURNS The quotient
 */
//extern "C" int intDiv(int, int, int*);

#endif
