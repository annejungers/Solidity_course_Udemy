// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;

/* EXO
1. Create a contract myLoopingPracticeContract and place all the following code within:
?. Create a list that range from 1 to 20 called longList
3.  Create a list called numbersList of the following numbers: 1, 4, 35, 56
4.Create a function that loops through numbersList and returns a true value if the number is in the list
5. create a function that loops through longList and returns how many even numbers are in the longlist


*/


contract myLoopingPracticeContract {

    uint[] longList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
    uint[] numbersList = [1, 4, 34, 56];


    function numbersListLoop(uint userNumber) public view returns(bool){
            bool numberExists = false; // as long as the number is not in the list, this is false ,tant que le user n'a pas trouvé le number, le number n'existe pas = false

        for(uint i= 0; i < numbersList.length; i++){
            if(numbersList[i] == userNumber){  // if the number that we are iterating in the list is the same as the input in the function then..
                numberExists = true;
            }
        }

        return numberExists;
    }


    // if the modulo
    // number % 2 == 0  --> always be an even number
    function evenNumberLoop() public view returns(uint) {
        uint count = 0;
        for(uint i = 0; i <longList.length; i++){
            if(longList[i] % 2 == 0){
                count++;
            }

        }
        return count;



    }
}