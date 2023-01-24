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
    //we want this loop to return the index value of some integer we are searching for
    function indexOf(uint[] storage self, uint value) public view returns (uint){
        for(uint i=0; i <self.length; i++ ){ 
            if (self[i] == value) return i;
        }
    }
}



contract Test {
    // using A (library) for B (another element)
    uint [] data;
    constructor() public{
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    function isValuePresent(uint val) external view returns(uint){
        uint value = val;
        uint index = Search.indexOf(data, value);
        return index;
    }
}

/*
A  for N

the directive using A for B: can be used to attach library functions of library A to a given type B.
The function will be used  the caller type as their first parameter (identified using self)

exercise: 
1. Copy over the library Search and the contract Test below and rename it to Search2, 
and Contract Test to Test2

2. Using the A for B library pattern assign the new library to n empty array type and rewrite
the code so that we can run the same search hardcoded this time to the value of 4 accordingly.

*/

// REMARK CHECK IF EVERTHING IS CORRECT WITH VIDEO

library Search2 {
    function indexOf(uint[] storage self, uint value) public view returns (uint){
        for(uint i=0; i <self.length; i++ ){ 
            if (self[i] == value) return i;
        }
    }
}



contract Test2 {
    // using A (library) for B (another element)
    using Search2 for uint[];
    uint [] data;
    constructor() public{
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    function isValuePresent() external view returns(uint){
        uint value = 4;
        uint index = Search.indexOf(value);
        return index;
    }
}