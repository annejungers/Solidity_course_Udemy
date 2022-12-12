// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;


/*
we want to be the only one that can make coins
the contract allows only its creator to create new coins (difference issuance schemes are possible
Anyone can send coins to each other without a need for registering, no so need for username and password
all you need is the Ethereum keypair


rk: when you create an event, you have to emit this event

*/

contract Coin {
    // the keyword public is making the variable accessible from other contracts
    address public minter;
    mapping(address =>uint) public balances;

    // event to allow our clients to react to the change that is happening in our contract
    // Sent takes 3 arguments
    event Sent(address from, address to, uint amount);

    constructor(){ // only runs when we deploy the contract
        minter = msg.sender;
    }

    // we want to make new coins and send them to an address
    // only the owner can send these coins
    function mint(address receiver, uint amount)public {
        require(msg.sender == minter);
        balances[receiver] += amount; // same as balances[receiver] = balances[receiver] + amount;
                                        //to make new coins and send it to receiver. 
    }

    error InsufficientBalance(uint requested, uint available);

    // sent any amount of coins to an existing address
    function Send(address receiver, uint amount) public {
        //require amount to be greater than x = true and then run this -
        if(amount > balances[msg.sender])
        revert InsuffcientBalance({
            requested: amount,
            available: balances[msg.sender]
        });   // revert stops the transaction from happening and provide the information regarding the transaction
        balances[msg.sender] -= amount; // the balance of the sender should go down because he sends the token
        balances[receiver] += amount; // the balance of the receiver goes up because he receives the token
        emit Send(msg.sender, receiver, amount); //address from, address to, uint amount
    }
}