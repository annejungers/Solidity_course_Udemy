// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// Arithmetric OPERATORS: + - * % /
// remainder or modulus % --> returns the remainder result of the division of two numbers 21/10 -->1
//Comparison Operators: ==

//Operands variables

contract Operators{

    function calculator() public pure  returns(uint) {
        uint a = 5;
        uint b = 8;
        uint result;
        result = a /b; // 5/8 = 0 in Solidity
        return result;

    }
}


