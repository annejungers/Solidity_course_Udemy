// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;

/*

Loops allow you to iterate through data and take functional action depending on the data

looping is useful to go through a list

a "for" loop is used to repeat a specific block of code a known number of times
ex you want to check the grade of every student in the class, we loop from 1 to that number

rk the modulo returns the remainder value

*/

contract loopContract {

    uint[] public numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    //create a loop that acts as a multiple checker in our numberslist
    // if you have four, how many numbers in the list can be a multiple

    function checkMultiples(uint _num)public view returns(uint){
        uint check = 0;
        for(uint i = 0; i < numbersList.length; i++){
            if(i % _num == 0){
                check +=i;
            }
        return check;
    }

    //create a function that can check if two numbers are divisible by each other
    // or are multiple of each other

    // 4 and 2 - return true
    //3 and 5 - return false

    function checkMultiple(uint _num, uint nums) public view returns(bool){
        //take two numbers and if they return modulo of zero then the sec number is a multiple of the first
        //modulo % gives the remainder of two numbers

        if(_num % nums == 0){
            return true;
        }else {
            return false;
        }
    }

}