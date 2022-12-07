// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


/*

Logical Operators
&& --> AND --> a < b && b > c      both conditions have to be satisfied
|| --> OR --> a < b || b > c       either conditions must be satisfied
! - NOT --> !(a > b)              

Bitwise operators
& --> AND
| --> OR
^ --> XOR

*/
/*
contract LogicalOperators{

    uint a = 14;
    uint b = 10;


    function logic()public view returns(uint){
        uint result = 0;
        if(a > b || a == 5){
            result = a + b;
            
        }
        return result;
    }
}

*/

    // create a function that will multiply a by b 

contract MultiplyAbyB{

    uint a = 17;
    uint b = 32;

    function multiply () public view returns(uint){
        uint result = 0;
        if(b > a && a != b){
            result =  a * b;
        }
        return result;

    }
}
