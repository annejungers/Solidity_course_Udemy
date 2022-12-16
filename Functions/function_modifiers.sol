// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*

Functions modifiers are used to modify the behaviour of a function
Functions modifiers are customizable modification for a function, we define the terms

*/

contract Owner {
    //function modifiers
    address owner;
    //when we deploy this contract we want to set the address to the owner (msg.sender)
    constructor ()public{
        owner = msg.sender;
        }

    modifier  onlyOwner{
        // write customizable logic to modify our functions
        require(msg.sender == owner);
        _; // the _ says: if msg.sender == owner, if this is true, continue with the code in the function
            // this _  actually represents the function continuing
            // that why we put the _ under the require, because we first have the condition
    }

    modifier costs(uint price){
        //What is msg.value: the amount in wei being sent with a message to a contract
        require(msg.value >= price); // we check that we have that amount in out balance
        _;
    }
}

contract Register is Owner {
    mapping(address => bool) registeredAddresses;
    uint price;

    constructor(uint initialPrice) public { price = initialPrice;} // = we deploy our contract, we set the price to initialPrice

    //function register will set msg.sender (current caller) to true
    function register() public payable costs(price){
        registeredAddresses[msg.sender] = true; // we want to know if the person is registered or not in our mapping of registeredAddresses

    }

    function changePrice(uint _price) public onlyOwner { // onlyOwner = function modifier
        price = _price;                                  // only the Owner is able to change the price
    }

}

/*
Exercise Time
1. Create a function modifier called costs for a register function that checks to see
that the senders value( hint look up msg.value) requires to be greater than or equal to the price
The function modifier should take an argument



*/