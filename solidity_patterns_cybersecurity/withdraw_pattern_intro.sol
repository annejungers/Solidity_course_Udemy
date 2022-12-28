// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
Cybersecurity in Solidity

--> WITHDRAWAL PATTERN  (one of the most important pattern in Solidity)

Withdrawal pattern ensures that direct transfer call in not made which poses a security threat.
Transfers are atomic(meaning all of nothing)

EXO
Write an iteration function called returnFunds that will refund through the transfer method investors to a var called funders
back to their wallets called contributedAmount.
Add a modifier to the signature that only the owner can execute this function.
The function should return a bool success. 

.transfer

*/

contract WithdrawalPattern {

    modifier onlyOwner{
        require(true);
        _;
    }

    function returnFunds() public onlyOwner returns (bool success){
       for(uint i = 0; funders.length; i++) {// we loop through our funders
        funders[i].transfer(contributedAmount); // funders at each iteration --> funders[i], and we want to transfer the contributed amount
        }
    return true;
    }


/*
What do you think is the problem with the returnFunds function?

1. What if the owner chickens out and does not return funds?
The owner is a single point of failure and this pattern suggest adherence to server-centric thinking
only a privileged user should be able to initiate a mass distribution of funds

2. the loop us unbound! it could very well run out of gas  before allocating all the funds back
an attacker could do is just make a bunch of small contributions  .0000284289

Another example: We only have two investors to refund -

Write a function that will return funds to two investors, john and tatianna without using a for loop
*/

function returnFunds() public onlyOwner returns(bool success){
    tatianna.transfer(contributedAmount);
    john.transfer(contributedAmount);
    return true;
}

// what could go wrong?? 
/*
What happen if tatianna rejects the transfer -I am not taking this transfer/not accepting it
--> if tatianna rejects the transfer (because she is maybe too rich to care), the function is going to fail and Johne is not going to get paid
that's a big problem
everybody bellow is not going to be paid!!

Thinking that all contracts and accounts want to accept funds automatically may be intuitive at first 
but it is in fact very naive and very dangerous to build your code like this. 

if it is more in their interest to reject funds, then chances are they will reject the funds !! (can be sabotage)


write a default fallback function
*/


fallback()public{} // we don't recommend to write code within the {}
// a default fallback function is not payable - it will reject funds
// so if you have a contract with a fallback function like this, it will reject funds
// so if the contract has a default fallback function, it would be deadly for the naive function
// to refund this contract address - it will not work unless everyone accepts. It will fail

// Should we disallow contracts to receive funds?? --> NO
// because not all contracts will fail or are malicioius - it would deter DAOs

// How does a contract find out if another address is a real contract?

}

contract Victim {
    function isItAContract() public view returns(bool){
        //if there bytes of codes greater than zero then it is a contract!
        uint32 size;
        address a = msg.sender;
        //inline assembly accesses EVM Ethereum Virtual Machine at a low level
        assembly {  // we go into the EVM where things are assembled, within the assembly, we can access information
            size := extcodesize(a) // to get the code size of our assembly we use the method extcodesize = retrieve the size of the code
        }
        return(size > 0); // contract address so the size should be greater than zero
    }
}

contract Attacker{
    bool public trickedYou;
    Victim victim;

    constructor(address _v) public {
        victim = Victim(_v);
        trickedYou = !victim.isItAContract();
    }
    // we if you call the address from the constructor, there are no byte codes
}

//WHAT DO WE DO??? --> THE WITHDRAW PATTERN  (see next .sol
