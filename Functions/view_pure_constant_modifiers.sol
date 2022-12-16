// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
View functions ensure that they will not modify the state (return values)
Pure functions ensure that they not read or modify the state (return calculations)

view & pure are not working on the scope(visibility) like public or external

*/

contract MyContract {

    uint value; //state var

    // getValue is a read-only function --> we ensure that with view keyword
    //blue = read-only
    // because of that everytime we call the function we have to make sure that we are not modifying the state
    // we are not changing the state of the var, we are just returning it
    // here we are using a 'eth call'
    function getValue() external view returns(uint){
        return value;
    }

    function getNewValue() external pure returns(uint){
        return 3+3; // we are returning a calculation
    }

    // setValue modifies the state, everytime we are doing that, we change it >< getValue
    // orange = modify the state
    // here we are using a 'eth send transaction'
    function setValue(uint _value) external {
        value = _value;
    }

    function multiply() external pure returns(uint) { // external = scope/visibility
        return 3*7;
    }

    function valuePlusThree() external view  returns(uint){
        return value +3;
    }
}

/*
EXO
1. Create a function called multiply which returns 3 multiplied by 7
2. Create another function called valuePlusThree which returns the state variable value + 3
3. Successfully deploy the contracts and test for the results
*** Remember*** to use the appropriate modifying keywords accordingly!!
*/