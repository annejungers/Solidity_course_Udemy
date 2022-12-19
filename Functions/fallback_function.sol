// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*

Define Fallback Functions
1. Cannot have a name (anonymous function)
2. Does not take any inputs
3. Does not return any outputs
4. Must be declared as external (

Why use it? When you call functions that does not exist - or send ether to a contract by send , we use transfer or call method

statement: send and transfer methods receives 2300 gas but call method receives more (all of the gas)

when you write an anonymous function, you just write fallback without function keyword

*/

//fallback function
contract Fallback {

    event Log(uint gas);

    fallback() external payable {
    // not recommended to write much code in here - because the function will fail, if it use too much gas

    //invoke the send method: we get 2300 gas which is enough to emit a log
    // invoke the call method: we get all the gas (the leftovers)

    // special solidity function gasLeft returns how much gas is left
    emit Log(gasleft());
    }

    function getBalance() public view returns(uint){
        return address(this).balance; // we return the balance of the address itself
                                        //return the stored balance of the contract
    }

}

// new contract will send ether to Fallback contract which will trigger fallback functions
/*2 functions:
- we transfer ether with the transfer method
- we transfer ether with call method
*/
contract SendToFallback{

    function transferToFallback(address payable _to) public payable{
        //send ether with the transfer method
        // automatically transfer will transfer 2300 gs amount
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable{
        //send ether with the call method
        (bool sent, ) = _to.call{value: msg.value}('');
        require(sent, 'Failed to send!' );
    }

}

//Exercise is to understand this contract and explain it to yourself