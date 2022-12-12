// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
exo - array

1. Create an empty array called changeArray
2. function called removeElement which set the index argument of the array to the last element in the array
3. remove the last index from that function with the pop method
4. create a function called test which pushes 1 2 3 4 into changeArray
5. remove the element 2 from the array when the contract is called




*/


contract ExoArray{

    uint[] public changeArray;

    function removeElement() public{
        changeArray.pop();
    }


    function test(uint num)public {
        for (uint i = 1; i <= 4; i++){
            changeArray.push(i);
        }
    }





}