// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
INTERFACES

Interfaces are similar to abstract contracts and are created using interface keyword

Key characteristics of an interface
An interface:
- cannot have any function with implementation
- Functions of an interface can be only of type external
- cannot have constructor
- cannot have state variables
- can have enum, structs which can be accessed using interface name dot notation. // we can create our own data type

What is the value of interfaces??
They allow to connect information. We can access contract information through these interfaces.
We don't have to access code over and 

*/

contract Counter {
    uint public count;

    function increment() external{
        count += 1;  // the counter is going to count
    }
}

// how do we interact with this contract without copying and pasting the code??
// ANSWER  --> interfaces

interface ICounter{
    function count() external view returns(uint); // it can be accessed from outside and we see the counter changes
    function increment() external;
}

// through the interface we interact between the 2 contracts Counter and MyContract
//this is very powerful when we have more expanded reusable contracts
contract MyContract{
    function incrementCounter(address _counter)external{
        ICounter(_counter).increment();
    }
    function getCount(address _counter) external view returns(uint){
        return ICounter(_counter).count();
    }
}

/* we interact with Uniswap in your Remix IDE ! youhou

EXO INTERFACES WITH UNISWAP (decentralized exchange)
In Uniswap, each Uniswap smart contract, or pair, manages a liquidity pool made up of reserves of two ERC-20 tokens!
In this exercise, you are going to use the IDE to speak to Uniswap and get the reserves of a Uniswap pair of your choosing: 0

These are the instructions in order to complete this exercise:
1. Create two interfaces with each hold separate function signatures which you must look up in the Solidity docs V2.
2. One interface will be called UniswapV2Factory which will contain the function signature that gets pairs.
3. Another interface will be called UniswapV2Pair which will contain the function signature to get reserve values.
4. Create a contract which contains addresses of the paired tokens you choose as well as  the factory address of Uniswap  // go to Etherscan
5. Within the contract make a function which can successfully gets the pair of your tokens and set it to a single address
6. Use that address to get the reserve values and finally return the reserve values
7. Switch to Mainnet and connect Metamask but do not deploy the contract (or you will spend money!!)
8. From the Mainnet manually go through the steps (5 and 6) of retrieving the values without deploying or spending gas!
9. Post your results of the reserve values in our Discord community and celebrate because you have seriously earned it!
10. Good LuUckk!!! 

*/


interface UniswapV2Factory{    // function signature that gets pairs

}

interface UniswapV2Pair{       // function signature that gets reserve values


}
