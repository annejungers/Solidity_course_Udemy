// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
EVENTS
Events are just events that we emit to the outside world, to let our customers know about what is going on.
people who can access events are outside

Example: Decentralized Exchange: On a smart contract traders can trade tokens  - from the smart contract emit an event so
they can get the data (via web front mobile application )

after emitting events, you can't read them in the past, only the people outside of the blockchain  can access it- 
Events do not get stored as memory/ not stored in memory, that's why they have lower gas costs
it is a one way transmission - events have lower gas cost than storage 

keywords

event - emit

event EventName(var, var2, var3)

function trade() external{

    emit EventName(block.timestamp, to, amount);

}

indexed ---> allows the outside consumer to to filter through and filter out  and get the information that they need 
             this indexed keyword is going to cost higher gas, so you only can use 3 indexed per event!!!!



*/

contract LearnEvents {
    // 1. Declare the event
    // 2. we want to emit the event

    event NewTrade(  // set up the parameters for the event
                    // what is important for the trade?
                    // date of the trade, address from where the trade is coming from, where the trade is going
    uint indexed date;
    address from;
    address indexed to;
    uint indexed amount;
    )

    function trade(address to, uint amount) external { // function where we make the trade
        // an outside consumer can see the event through web3.js
        // block.timestamp is a global variable that gives the current timestamp
        emit NewTrade(block.timestamp, to , amount);     // to emit the event
    }
}

/*

people can see the event thanks to web3.js



*/