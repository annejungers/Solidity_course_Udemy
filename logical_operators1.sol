// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
logical operators 

&&  --> AND (both condition must be satiffied)
|| --> OR (either condition must be satsfied)
!= --> logical not


*/

contract LogicalOperators{
    
    uint a = 17;
    uint b = 32;

    function logic() public view returns(uint){

        uint result = 0;
        if( a < b && a != b){
            result = a *b;
        }

        return result;
    }

}