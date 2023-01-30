// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
ERROR HANDLING -  ASSERT()  - REQUIRE()  - REVERT()

rk
error handling is quite intuitive in programming --> we are trying to write good code which means that we are always thinking ahead
what if I write this? what if this changes? what is something goes wrong, etc?
how do we deal with error

Solidity has functions that help us with error handling
A way of tackling this is that when an error happens, the state reverts back to its original state.
Below are some of the important methods for error handling:

assert(bool condition) - In case condition i not met this method call causes an 
invalid opcode and any changes  done to state got reverted. This method is to be used for internal errors.
+ we use assert to make sure that things will never happen (it has to be or it can't never be)

require(bool condition) - In case condition is not met, this method call reverts to original state. 
- this method is to be used for errors  in inputs or external components.
+ require is a requirement, if the condition is not met, than nothing happens, you make the changes or you don't

require(bool condition, string memory message) - In case condition is not met, this method call reverts to original state. 
- this method is to be used for errors  in inputs or external components. It provides an option to provide a custom message


revert() - this method aborts the execution and revert any changes done to the state
+ like throw

revert(string memory reason) - This method aborts the execution and revert any changes done to the state.
It provides an option to provide a custom message
*/

contract LearnErrorHandling{

    bool public sunny = true;
    bool public umbrella = false; // because we set our sun (sunny) to true
    uint finalCalc = 0;

    // solar panel machine
    function solarCalc() public {
        require(sunny, "it is not sunny today!");
        finalCalc += 3;
    }
    
    // we add this function to see how assert works
    // finalCalc can never equal 6
    // we we run this function after deployment, we get this message "tx has been reverted to its initial state"
    function internalTestUnits() public view {
        assert(finalCalc != 6);
    }

    /*
    // solar panel machine
    // if we put assert here,the tx can never goes to 6
    function solarCalc() public {
        require(sunny, "it is not sunny today!");
        finalCalc += 3;
        assert(finalCalc != 6);

    }

    */

    //machine that controls the weather
    function weatherChanger() public {
        sunny = !sunny;
    }

    //grab final finalCalc
    function getCalc() public view returns(uint){
        return finalCalc;
    }

    function bringUmbrella() public{
        if(!sunny){
            umbrella = true;
        } else {
        revert("No need to bring an umbrella today!!");
        }
    }

}

/*
EXO
1. Create a contract called Vendor with the state variable address seller
   It should contain a modifier onlySeller that requires the msg.sender to be the seller.
2. Add a function becomeSeller which sets the seller to the msg.sender
3. Create a function named sell which is payable and check to see if an input of an amount
   is greater than msg.value to revert that there is not enough ether provided as an throw error
*/

contract Vendor{

    address seller;

    modifier onlySeller(){
        require(msg.sender == seller, "only seller can sell this!");
        _;
    }

    function becomeSeller() public {
        seller = msg.sender;
    }

    function sell(uint amount) payable public onlySeller{
        if (amount > msg.value){
            revert("there is not enough ether provided!");
        }
    }
}