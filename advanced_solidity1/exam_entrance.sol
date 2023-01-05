// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
EXAM ENTRANCE ADVANCED SOLIDITY 
--> if you are not able to pass the exam, you have to make some revisions

Think to smart contracts in terms of Gateway of data
they are the keepers of data

1. Create 3 contracts c, D and E

2. Do the following in contract C:
    a. Create an integer state variable called data which  can only be used internally and not at all in other  contract
    b. Create an integer state variable called  info which can be called  both inside and outside the contract
    c. immediately initialize info's value to 10 within a constructor
    d. Create a function called increment which can only be used  internally and not at all in any other contracts
        It should take an input integer called a and be read only returning the calculation of its input +1
    e. Write a function called dupdateData which takes an integer argument caled a and sets data to the argument
        The function should be able  to be called  both inside and outside the contract
    f. Write  a read only function called getData which returns value of the data and can be called both inside and outside the contract 
    g. Write a read only function called copute which calculates and returns two integer arguments a + b
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