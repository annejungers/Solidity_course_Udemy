// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 > 0.9.0;

/* 
the modulo calculation trick (finding the remainder)

112% 35 --> 35*3 = 105 ---> remainder = 7

Arithmetic operators: + - * / % ++ --

increment ++ --

exo a = 2 b = 12

a + b - b + a =4
a*b*b - 1 = 287
b + b++ + a++ = 28 (12 + 12+1  +2+1)
(b%a) + 3 = 3

*/

contract Operator{

    function calculator()public pure returns(uint) {
        uint a = 8;
        uint b = 9;
        uint result;
        result = a --;
        return result;

    }

}