// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*

CONSTRUCTORS = a special function using  constructor keyword
It initialises state variables of a contract

Following are key characteristics:

1. A contract can have only one contructor. 

2. A constructor code is executed once when a contract is created and it is used to initialize contract state 

3. After a constructor code is executed, the final code is deployed to the blockchain 
    This final code includes public functions and code reachable through public functions.
    Constructor code or any internal method used only by constructor are not included in final code

    A constructor can be either public or internal

    A internal constructor marks the contract as abstract

    In case , no constructor is defined, a default constructor is present in the contract


*/


