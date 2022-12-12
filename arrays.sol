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


delete = remove a specific element from an Array

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

    //delete -->remove element from the array 
    function remove(uint i)public{
        delete myArray[i]; // !!! put the value i to zero so the length remains the same
    }

/*
exo - array
1. Create an empty array called changeArray
2. function called removeElement which set the index argument of the array to the last element in the array
3. remove the last index from that function with the pop method
4. create a function called test which pushes 1 2 3 4 into changeArray
5. remove the element 2 from the array when the contract is called
*/

    uint public changeArray;

    function removeElement(uint i) public {
        changeArray[i] = changeArray[changeArray.length -1];
        changeArray.pop();
    }

    function test() public{
        /* One way
        changeArray.push(1);
        changeArray.push(2);
        changeArray.push(3);
        changeArray.push(4);
        */

        //other way for loop
        for(uint i= 1; i<= 4; i++){
            changeArray.push(i);
        }


    }

    // function that returns the full array
    function getChangeArray() public view returns(uint[] memory){
        return changeArray;
    }

}

