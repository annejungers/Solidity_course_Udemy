// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*

string ---> data type to declare a variable of type String

!! a string has to be stored! --> so we add memory (it has to be stored in memory)

what is memory in Solidity?
memory = like RAM, memory in Solidity is a temporary place to store  data
whereas Storage (another way to store the data) holds data between function calls
 but with memory when the function is over, it wiped off the information
 

the Solidity smart contract can use any amount of  memory during the execution (but we want to be viligent in how much memory we use because everything costs money/gas)
But, once the execution stops, the memory is completely wiped off for the next execution

depending on what you want to do/your expenses, sometimes it is better to use memory sometimes it is better to use storage


rk : 
\' --> for character ' in a string
\n  --> to skip a line


*/


contract learnStringInSolidity{

    string greetings = "helllooooo! \n You\'re here now";  // we put greetings here outside the functionbecause it is wiped off everytime in the function

    function sayHello() public view returns(string memory){


        return greetings;
    }


    function changeGreetings(string memory _change) public {

        greetings = _change;
        
    
    }


    // how to return the length of a string???? ---> convert in Bytes
    // !!! strings in Solidity are too expensive computationally to get length in Solidity, you have to do it differently than from other languages
    // Solidity will never allow you to do greetings.length  --> you have to convert to bytes
    // bytes is like string but instead of converting in string format, it convert in bytes format
    // Bytes is the basic uint of measurement  in computer engineering
    function getChar() public view returns(uint){

        bytes memory stringToBytes = bytes(greetings);
        return stringToBytes.length ;   // now we can use length
    }

    // EXO
    string favoriteColor = "blue";

    function favoriteColorString() public view returns(string memory){
        return favoriteColor;
    }


    function myFavoriteColor(string memory _color) public{
        favoriteColor = _color;

    }

    function getColorLength()public view returns(uint){
        bytes memory favColorToBytes = bytes(favoriteColor);
        return favColorToBytes.length;

    }

}


