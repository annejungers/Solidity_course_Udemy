// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
SPECIAL VARIABLES = Global variables = var globally available and provides information about the blockchain

ex:
msg.sender: sender of the message (current call), 
msg.value (uint) = number of wei sent with the message
block.timestamp: current block timestamp as seconds since unix epoch, 
block.number(uint): current block number

see Solidity documentation cheat sheet https://docs.soliditylang.org/en/v0.8.17/cheatsheet.html
to see all the global variables

*/

contract LedgerBalance {
// create a map of wallets with amount
// set up a function that can update the amount of the person call the contract

    mapping(address => uint) balance;

    function updatesBalance( uint newBalance) public {
        balance[msg.sender] =  newBalance ; //we can have the balance the current address by selecting the specific address with the msg.sender
                                // we want to update it with the newBalance
    }

}

    /* 
    1.create a new contract called Updated
    2. (if you haven't done this) copy the contract LedgerBalance above your new contract
    3. Create a public function called updatesBalance
    4. instantiate the data type contract LedgerBalance to a new variable called ledgerbalance( similar to struct or enum)
    5. set the new variable ledgerbalance = new ledgerBalance()
    6. update the ledgerbalance to 30
    7. deploy both contracts and then update the ledgerbalance by 30 using the updated contract

    */

// a contract in itself is like a struct, they can be data types

contract Updated {

    function updatesBalance()public{
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updatesBalance(30);

    }
}

// OTHER SPECIAL VARIABLES

contract SimpleStorage {

    uint storedData; 

    function set(uint x ) public {
        //storedData = x;
        //storedData = block.difficulty;
        // storedData = block.timestamp; // time at which we are running this function on the blockchain = timestamp
        storedData = block.number; // the block number where are are adding the information to

    }

    function get() public view returns(uint){
        return storedData;
    }


}