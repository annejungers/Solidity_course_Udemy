pragma solidity >= 0.7.0 < 0.9.0;
/*
It is time to test your skills and the knowledge you have gained  going through this course from start to finish!

Your mission is to write a decentralized auction DApplication which can at the minimum have the following functionality. 
As long as you meet the minimum required functionality then you have passed this course, however should you choose to exceed
the minimum and continue  to expand upon the Auction then you are truly becoming a defi super star and I would love to see what 
you come up with so please share it in the discord!

If you fall short - do not worry, take your time, ask questions in our Discord, do some research, and go as far as you can. 
And when you are ready go to the Solution video and we can go through it all together as always. 

Final Exo

1. Create a contract called auction which contains state variables to keep track of the beneficiary (auctioneer), the highest bidder,
the auction end time and the highest bid.

2. There must be events set up which  can emit wheneven the highest  bid changes both address and amount and another event for the auction ending
emitting the winner address and amount 

3. There should be a bid function which includes at the minimum the following:
a. revert the call if the bidding period is over.
b. If the bid is not higher, send the money back.
c. emit the highest bid has increased

4. Bearing in mind the withdrawal pattern, there should be withdrawal function to return bids based on a library of keys and values

5. There should be a function which ends the auction and sends the highest bid to the beneficiary!

allright - so this is your mission - good luck and may the defi be with you! 
*/

contract Auction {
    address payable public beneficiary;
    uint public auctionEndTime;  // we keep track of thr time with integers

    //current state of the auction
    address public highestBidder;
    uint public highestbid;
    bool ended;

    mapping(address => uint) pendingReturns;

    event highestBidIncrease( address bidder, uint amount);
    event auctionEnded( address winner, uint amount);
    
    // we want the smart contract executes when a beneficiary says "hey I am setting up an auction here" --> we do this with a constructor
    constructor(uint _biddingTime, address payable _beneficiary){ 
        beneficiary = _beneficiary;
        auctionEndTime = block.timestamp + _biddingTime;
    }


    function bid() public payable {
        if(block.timestamp > auctionEndTime) revert("the auction has ended!");
        
        if(msg.value <= highestbid)revert("sorry, the bid is not high enough");

        if(highestbid != 0){
            pendingReturns[highestBidder] += highestbid;
        }

        highestBidder = msg.sender;
        highestbid = msg.value;
        emit highestBidIncrease(msg.sender, msg.value);
    }

    function withdraw()public payable returns(bool){
        uint amount = pendingReturns[msg.sender];
        if(amount > 0){
            pendingReturns[msg.sender] = 0;
        }
        if(!payable(msg.sender).send(amount)){
            pendingReturns[msg.sender] = amount;
        }
        return true;
    }

    function endsAuction()public {

        if(block.timestamp < auctionEndTime) revert("The auction has not ended yet!");
        if (ended) revert("the auction is already over!!");

        ended = true;
        emit auctionEnded( highestBidder, highestbid);
        beneficiary.transfer(highestbid);


    }

}