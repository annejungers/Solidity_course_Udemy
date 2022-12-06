// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
VARIABLE SCOPE - Functions & Variables

Private = You can only call the function inside the contract
Internal = called only within the contract OR contracts that inherit from the contract
External = you can only call the function outside the contract not from other functions within
Public = You can call the function outside the smart contract as well as inside the smart contract

How to decide which one to use?
RULE OF THUM: Give the minimum amount of priviledge to any entity
1. Private, 2. Internal, 3. External, 4. Public

Modify the rules of scope in Solidity with keywords
private public external internal

State variables vs Local variables


contract C {

    function x() returns(uint){
        uint data = 4; //local variable
        return data;
    }

    function y() returns(uint){
        return data; // you cannont call data here because it is a local variable
    }


}

*/

contract  C {

    uint data = 5; // state variable so it can be accessed by the two functions.the scope of the variable is outside of the two functions

    function x() public view returns(uint){
        return data;
    }

    function y() public view returns(uint){
        return data; 
    }


}

contract  D {

    uint public datA = 10; // state variable so it can be accessed by the two functions.the scope of the variable is outside of the two functions
                         // but public keyword so it is also accessible outside of the contract now!!!

    function x() public returns(uint){
        // change the data output internally in function x to 17
        datA = 17; // I changed the value of datA but only within the function
        return datA;
    }

    function y() public view returns(uint){
        return datA; 
    }


}

