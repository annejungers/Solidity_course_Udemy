// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
uint data type = unsigned integer
its value must be non-negative
uint = uint256
you can declare uint with less bits - uint8, uint18, uint31, etc


you can convert string to bytes to save some gas 
--> importance to make smart contracts that are cost efficient


uint256 value min = 0
        value max = 2^256-1=115792089237316195423570985008687907853269984....   = you can put a lot of information in it

uint8 --> you cannot put a lot of information in it

*/

contract learnConversions {

    uint number =2;

//Convert to 32 bits to 16bits
uint32 a = 0x12345678;
uint16 b= uint16(a); // b= 0x5678

//Convert from 16 to 32 bits
uint16 c = 0x1234;
uint32 d = uint32(c); //d= 0x00001234

// What is the cost? bytes 2 has a lager ranger than bytes1
// conversion to smaller costs costs higher order data
bytes2 e = 0x1234;
bytes1 f = bytes1(e); //f = 0x12 we are loosing data

//What does this add?
//conversion to higher bytes adds padding bits to the right
bytes2 g = 0x1234;
bytes4 h = bytes4(g); //h = 0x1234000
    
}