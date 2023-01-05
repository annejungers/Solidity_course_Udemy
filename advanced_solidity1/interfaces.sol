// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
INTERFACES

are similar to abstract contracts and are created using interface keyword.

Following are the key characteristics of an interfance:
- cannot have any function with implementation
- cannot have a constructor
- cannot have state variables
- can have enum, structs which can be accessed using interface name dot notation 
(means we can create on own data types)
- functions of an interface can be only of type external

Interfaces allow us to connect information 
we can accesss contract information thrugh these interfaces so we can connect our contracts in a way we do not have to copy/paste code

*/

contract Counter {
    uint public count;

    function increment() external {
        count +=1;
    }
}

// how do we interact with this contract without copy/paste the code --> INterface!! 
// it is like a device to connect to the Counter 
interface ICounter {
    function count() external view returns(uint);
    function increment() external;
}

// how do we tie this together

contract MyContract {
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();  // we go in he ICounter, we put the 
    }

    function getCount(address _counter) external view returns(uint){
        return ICounter(_counter).count();
    }
}


/*
Exercise -  INTERFACES IN UNISWAP (decentralized exchange)
In Uniswap






*/