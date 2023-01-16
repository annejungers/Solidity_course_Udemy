// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
For the exam, recall the following:

Constructor: a special function declared with constructor keyword which will be executed once per contract
              and is invoked when a contract is created 

State variables : Variables to store the state of the contract

Functions: Functions can modify the state variables to alter the state of a contract

Visibility Scope --->

external: External functions are meant to be called by other contracts.
          They cannot be used for internal call.
          To call external function within contract this.function_name()
          State variables cannot be marked as external 

public: Public functions/variables can be used both externally and internally of the contract

internal: Internal functions/varialbles can only be used internally or by DERIVED CONTRACTS

privat: private functions/variables can only be used internally and not even by derived contracts



*/

/*
EXAM ENTRANCE ADVANCED SOLIDITY 
--> if you are not able to pass the exam, you have to make some revisions

Think to smart contracts in terms of Gateway of data
they are the keepers of data

1. Create 3 contracts C, D and E

2. Do the following in contract C:
    a. Create an integer state variable called data which  can only be used internally and not at all in other  contract
    b. Create an integer state variable called  info which can be called  both inside and outside the contract
    c. immediately initialize info's value to 10 within a constructor
    d. Create a function called increment which can only be used  internally and not at all in any other contracts
        It should take an input integer called a and be read only returning the calculation of its input +1
    e. Write a function called dupdateData which takes an integer argument caled a and sets data to the argument
        The function should be able  to be called  both inside and outside the contract
    f. Write  a read only function called getData which returns value of the data and can be called both inside and outside the contract 
    g. Write a read only function called compute which calculates and returns two integer arguments a + b
        the function can onl be used internally or by derived contracts


    Do the following in contract D:
    a.derive contract C to a new variable c and set a new instance of the contract to it
    b. write a read only function called readInfo which returns the info from contract c
    which can be called both inside and outside the contract 


    Do the following in contract E:
    a. inherit contract C into E with the special keyword is (inheritance)
    b. create an integer called result which can only  be used  internally and not even by derived  contracts.
    c. Create a private variable c which can inherits the contract C
    d. immediately set the variable c to a new instance of the contract C upon deployment with a constructor
    e. Write a function  called getComputedResult  which sets the values of 23 and 5 to the compute function in contract C to the var result
        the function can be used both externally and internally
    f. create a public read only function called getResult which returns the var result
    g. create a read only function which returns  the info variable from contract C and set the function
        to be used both externally and internally


Don't forget to celebrate completing this long exercise because you deserve it!!!


*/

contract C{
 uint private data ;
 uint public info;

 constructor (){ info = 10;}

 function increment(uint a) private pure returns(uint){return a +1;}
 function updateData(uint a) public { data = a;}
 function getData() public view returns(uint) { return data;}
 function compute(uint a, uint b) pure internal returns(uint) { return a + b;}
}

contract D{
    C c = new C();
    function readInfo()view public returns(uint){return c.info(); }  // because it is a new instance of C, we call the info like that c.info() with ()
}

contract E is C {
    uint private result;
    C private c; // Create a private variable c which can inherits the contract C (writing is a little bit tricky here)

    constructor(){c = new C();}

    function getComputeResult( )public {
        result = compute(23, 5);
    }

    function getResult() public view returns(uint){ return result;}
    function getNewInfo() public view returns(uint){return c.info();}


}

