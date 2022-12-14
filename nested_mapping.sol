// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
NESTED mappings
(maps whithin maps)

what if you wanted to store movies that belong to a certain person, things or address?
another example; what if you allow one address to spend on behalf of another address (ERC20 tokens)
ex: mapping(key => mapping(key2 => value2)) nestedMap;
the value is going to be a mapping


*/

contract LearnNestedMapping{

    struct Movie{
        string title;
        string director;
    }

    mapping(uint => Movie) public movie;
    mapping(address => mapping(uint => Movie)) public myMovie; // you have different addresses and each address have several movies

    function addMovie(uint id, string memory title, string memory director) public{
        myMovie[msg.sender][id] = Movie(title, director); // we select the address -> msg.sender
         // msg.sender = global variable accessible throughout solidity which captures the address that is calling the contract 
         
    }
}