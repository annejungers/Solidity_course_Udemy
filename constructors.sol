// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*

CONSTRUCTORS = a special function using  constructor keyword
It initialises state variables of a contract. (when we are refering to the state of a contract we are referring to state variables)

key characteristics:

1. A contract can only have one contructor. 

2. A constructor code is executed once when a contract is created and it is used to initialize contract state 
    Means that when a contract is deployed, the constructor is used to initialize the contract state

3. After a constructor code is executed, the final code is deployed to the blockchain 
    This final code includes public functions and code reachable through public functions.
    Constructor code or any internal method used only by constructor are not included in final code. 
    So whatever method we write in our constructor, it will not be present in the final code!! it is just used to initialize contract state

    A constructor can be either public or internal

    A internal constructor marks the contract as abstract

    In case , no constructor is defined, a default constructor is present in the contract

*/

contract Member{

    string name;
    uint age;

    //initialize name and age upon deployment
    constructor(string memory _name, uint _age) public{
        name = _name;
        age = _age;
    }
}

// we are calling the constructor for this contract
// first way
/*
contract Teacher is Member ("Tigercub", 35){
    function getName() public view returns(string memory){
        return name;
    }

}

*/

//other way to call the constructor but with constructor inside the other contract (advanced constructor)
contract Teacher is Member{

    constructor(string memory n, uint a) Member( n, a) public {}

    function getName() public view returns(string memory){
        return name;
    }

}




