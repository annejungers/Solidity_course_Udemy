
// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;

/*   While writing a program, there may be a situation when you need to adopt one out of a given set of paths.
In such cases, you need to use conditional statements that allow your program to make correct decisions and perform right actions

if statement: the if statement is the fundamental control statement that allows
Solidity to make decisions and execute statements conditionally

if ... else staremet: the 'if ... else statement is the next form of control statement that allows
Solidity to execute statements in a more controlled way

*/



contract decisionMaking{
    //if the user has the right password, then let the user in!
    // if the user has the wrong password, don't let him in!

    // reformulate: if the user has the right password, let him in, else (otherwise) don't!

    uint oranges = 5; // one = sign assigns value whereas two == signs equivalates values

    function validateOranges() public view returns(bool)

    {
        if( oranges == 5){   // whatever goes into the parenthesis evaluates the trueness
            return true;

        } else {
            return false;
        }

    }


    /*
    Exercise in DeFi
    1. Create a stakingWallet variable as an integer and set it to the value of 10;
    2. Write a function called airDrop which has public visibility, is IDE viewable and returns and integer
    3. create decision making logic so that  if the wallet has a value of 10 then to the Wallet 10 more
    4. add an else statement so that if the wallet does not equal the value of 10 to add only 1 more
    5. return the value of the wallet
    6. deploy the contract to test the results - try changing the value of the wallet to 6 and redeploying for varying results
    */

    uint stakingWallet = 10;
    function airDrop()public view returns (uint){
        if(stakingWallet == 10){
            return stakingWallet + 10;
        } else {
            return stakingWallet +1;
        }

    }

}