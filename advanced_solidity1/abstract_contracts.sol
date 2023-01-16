// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*

ABSTRACT CONTRACTS

+ VIRTUAL & OVERRIDE  in ABSTRACT CONTRACT

Abstract Contract is one which contains at least one function without any implementation.

Such as contract is used  as a base contract 
Generally an ABSTRACT contract contains both implemented as well as abstract functions 
DERIVED contract will implement the abstract function  and use the existing functions as and when required

base contract vs derived contract
then we have information in that base contract that gets passed along in a derived contract
= contract that inherits from the base contract 

we cannot deploy abstract contract

override =  when we rewrite a function

virtual = since the function has no implementation we should mark it as virtual

*/

//BASE/abstract       1er example
/*
abstract contract A {
    function y() public view virtual returns(string memory);
}

*/
contract A {
    function y() public view virtual returns(string memory){}
}

//DERIVED
contract B is A {
    function y() public override view returns(string memory){ //
        return 'hello';
    }
}


// technically the contract is still abstract since it has at least one function without a body/function without any implementation
//BASE CONTRACT or abstract contract        2e example
abstract contract Member{

    string name;
    uint age = 38;

    //because the function setName has no body, the contract is now abstract 
    function setName() public view virtual returns(string memory){}

    function returnAge() public view returns(uint){
        return age;
    }
}



// DERIVED CONTRACT
// the information that we get from the base contract gets passed along with the derived contract

contract Teacher is Member {
    function setName() public view override returns(string memory){
        return "Gordan";
    }
}


/*
EXO
1. Create an abstract base contract called Calculator with a read only public function that returns integers
2. Create a derived contract called Test which derives the Calculator contract and can calculate 1 + 2 and returns the result
*/

abstract contract Calculator {
    function getResult()public view virtual returns(uint){}
}

contract Test is Calculator {
    function getResult() public view override returns(uint){
        return 1+2;
    }
}