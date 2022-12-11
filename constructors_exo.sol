// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*


*/

contract Base {

    uint data;

    constructor(uint _data) public{
        data = _data;  // the constructor is initialising the contract state
    }

    function getBaseData() public view returns(uint){
        return data;
    }
}


contract Derived is Base(5) {
    function getData() public view returns(uint){
        return data;
    }
}