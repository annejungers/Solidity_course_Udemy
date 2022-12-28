// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
EVENTS
people who can access events are outside

Abstraction - Decentralized Exchange: 



*/

contract LearnEvents {
    // 1. Declare the event
    // 2. we want to emit the event

    //we can only use 3 indexed per event !!! = chose what is important

    event NewTrade(  // set up the parameters for the event
                    // date, address from where the trade is coming from, wher the trade goes
    uint indexed date;
    address from;
    address indexed to;
    uint indexed amount;
    )

    function trade(address to, uint amount) external { // function where we make the trade
        // an outside consumer can see the event thrugh web3js
        // block.timestamp is a global variable that gives the current timestamp
        emit NewTrade(block.timestamp, to , amount);     // to emit the event
    }
}