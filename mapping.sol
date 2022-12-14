// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*

Mapping is a way for us to create a reference --> = a reference type
like we do with arrays and structs  --> in arrays we reference some numbers [1, 2, 3] in structs we reference variables,...
mapping does the same thing BUT we a key and a value
so with mapping you create a library and you can access the items with key
Mapping allows you to save some data and add a key that you specify  ( ex of key --> the id)
and you can retrieve the information later

In Solidity you can't iterate though a map, you need to store the keys in an array and you can't give size



*/

contract learnMapping {

    mapping(address => uint) public myMap;   // each address will have its own value
                                            // here the key is address
    
    // function to get the address
    function getAddress(address _addr) public view returns(uint){
        return myMap[_addres];
    }


    // to give the address a value/ function that can add addresses into our map
    function setAddress(address _adr, uint _i) public{
        myMap[_addr] = _i;
    }

    function removeAddress(address _adr) public{
        delete myMap[_addr];
    }


}


/*

if it was JS, and we were using the .map( => ...)  -->???
and we try to get an address that doesn't exist, we would get undefined
it would not bring us its back
but in Solidity, it returns a value of 0

*/