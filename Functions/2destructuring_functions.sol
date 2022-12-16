// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

/*
Destructuring Assignments and Solidity tricks to understand better callback functions

Solidity functions can return multiple variables of different types
If you only want to keep one variable,then you can declare a variable and then use commas

*/

contract DestructuringFunctions{

    uint public changeValue;

    string public tom = "hello!";

    function f() public pure returns (uint, bool, string memory){
        return (3, true, "Goodbye"); // we return 3 variables of different types
    }

    function g() public {
        (changeValue,,tom) = f();// we are not doing the boolean and the string, we do just the integer
                                // function f() takes changeValue and returns 3 to changeValue = synthactic sugar   (changeValue,,) --> only change the changeValue=3
    }                            // we have changed the value of tom to goodbye



}