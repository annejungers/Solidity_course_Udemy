// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*

Comparison operators: operators which compare operands
<
>
==
!= --> a!=b  a should not be equal to be

<= less than or equal to  >= greater than or equal to 


require() --> a method that check wether or not something is true, and if something is true,
                it's going to continue to run the function
                if it is not true, it is going to run an error

*/

contract comparisonOperators {

    uint a = 10;
    uint b = 7;

    function compare()public view {
        require(a < b, 'this is an error');
    }

}


contract comparisonOperators2{

    uint c = 323;
    uint d = 54;

    function compare2() public view {

        require(c <= d, 'This comparison is false');
    }
}