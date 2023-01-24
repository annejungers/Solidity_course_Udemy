pragma solidity >= 0.7.0 < 0.9.0;

/*
Libraries are similar to Contracts but are mainly intended for reuse . A Library contains functions which other contracts can call.
Solidity have certain restrictions on use of a library. Following are the key characteristics of a Solidity Library

Library functions can be called directly if they do not modify the state 
That means pure or view functions only can be called from outside the library

Library cannot:
-  be  destroyed as it is assumed to be stateless

-have state variables

- inherit any element 

- inherited
*/

// we build a library to search through databases

library Search {
    function indexOf(uint[] storage self, uint value) public view returns (uint){
        for(uint )
    }
}