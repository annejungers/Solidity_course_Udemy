// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;
/*
scope variables  - functions & variables
private  = you can call the function only inside the contract
internal =call only within the contract or other contracts that inherit the contract
external = you can only call the function outside of the contract not from other functions within
public = you can call the function from outside as well inside the contract

*/

/*

contract C{

    uint public data = 10; //state variable 

    function x()public pure  returns(uint){
        //modify function x so that you return 25 for data without
        // changing the data of the state variable
        uint newData = 15;
        return newData;
    }

    function y() public view returns(uint){
        return data;
    }
}

*/


/*
contract C{

    uint public data = 10; //state variable 

    //we change function x to private 
    // when we deploy, we see that nobody has access to that function anymore
    // we cannot change the data
    function x()external pure  returns(uint){

        uint newData = 15;
        return newData;
    }

    function y() public view returns(uint){
        return data; 
    }

}


*/
/*
contract c{

    uint private data = 10;// state variable --> the data button is gone, because the variable is private, 
                            // you cannot access the data and change its value

    function x()public pure returns (uint { 
        uint newData = 25;
        return newData;
    }

    function y() public view returns(uint){
        return data; // you can access the variable via the function

    }
}
*/



contract C {

    uint external data = 10; // state variable --> got an error useless to make it external
                            // external= you can call the variable only from outside

    function x()public pure returns (uint) { 
        uint newData = 25;
        return newData;
    }

    function y() public view returns(uint){
        return data; 

    }
}

