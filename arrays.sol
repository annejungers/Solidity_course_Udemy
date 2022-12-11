// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
WHAT ARE ARRAYS?
Array is a data structure, which stores a fixed-size sequential collection of elements of the same type
= used to store a collection of data
collection of variables of the same type

push, pop, length methods = the most used methods in arrays

push = add one or more elements to the end of the array and returns the new length of the array
pop = remove the last element of the array and returns that value to the caller
length = a string property that is used to determine the length of a string

*/


contract LearnArray{

    uint[] public myArray;
    uint[] public myArray2;
    uint[200] public myFixedSizeArray;

    // push
    function push(uint number) public{
        myArray.push(number);
    }


    //pop
    function pop() public{
        myArray.pop();
    }


    //length
    function getlength()public view returns(uint){
        return myArray.length;

    }

    //remove element from the array




}