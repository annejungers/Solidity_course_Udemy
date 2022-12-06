// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;



contract C{

    uint data = 10;

    function x()public view returns(uint){
        uint newData = 17;
        return newData;
    }


    function y() public view returns(uint){
        return data;
    }

}