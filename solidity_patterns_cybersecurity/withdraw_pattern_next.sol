// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
Cybersecurity in Solidity

--> WITHDRAWAL PATTERN  (one of the most important pattern in Solidity)

Withdrawal pattern ensures that direct transfer call in not made which poses a security threat.
Transfers are atomic(meaning all of nothing)

HERE
Instead of using transfer which revert the code, we can use send which returns a bool

Write a function so only the owner can send Tatianna funds with the send method with logic
to set up what happens if the amount is not sent to Tatianna

*/
/*
function sendRefund()  onlyOwner returns(bool success){
    if(!tatiana.send(amount)){
        // do something with the failure
    }
}

*/

// this can still get messy for accounting... 

/*
Write a withdrawal function so that the investor can withdraw funds on their own through that functionality
Let the do it themselves
Enter our best friend over here  - msg.sender
*/

/*

Write another function to claim refunds. Write a function called claimRefund which requires that the balance of the 
msg.sender is greater than 0 and transfer the balance to the current caller.
Pseudo balance var named balance
*/
/*
function claimRefunds() {
    require(balance[msg.sender]> 0);
    msg.sender.transfer(balance[msg.sender]);
}
*/

//by the customer working directly to claim a refund with their contract address we eliminate the outside interference
// veryyy greatly

// BY MAKING OUR TRANSACTIONS ONE A a TIME we greatly reduce danger to our executions - withdrawal patterns

/*
EXO TIME
It is not safe to interact  with more than one customer at a time, so write a function to return funds using withdrawal pattern

1. Write a function called withdrawFunds that takes an amount and returns bool success in the signature.
2. Require that the balance of the current caller is greater than or equal to the amount 
3. Substract the amount from the balance  of the current sender 
4. Transfer the amount over and return the trueness of the function
*/

function withdrawFunds(uint amount) public returns(bool success){
    require(balane[msg.sender] >= amount);
    balance[msg.sender] -= amount;
    msg.sender.transfer(amount);
    return true;
}

















