// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*

*********  Inheritance

Inheritance is a way to extend functionality of a contract. = a contract will inherit the properties/functionnalities of another contract
Solidity supports both single as well as multiple inheritance

Observe: The contract in Solidity is similar to a Class in C++ and Javascript  = a blueprint for an object

Classes can inherit and so can contracts!

EXO
1. Contract A should have a state var called innerVal initialized to 100
2. Create a fully accessible function called innerAddTen which returns 10 to any given input
3. Contract B should inherit from contract A
4. Contract B should have a function called outerAddTen 
which returns the calculation from the innerAddTen function in Contract A to any given input
5. Create a function in contract B which returns the value of innerVal from contract A
6. Compile and successfully Deploy the contract and test the results


*/
/*MY SOLUTION

contract A {
    uint innerVal = 100;

    function innerAddTen(uint input) public returns(uint){
        return input = 10;
    }

}

contract B is A {
    function outerAddTen(uint input) public returns(uint){
        return innerAddTen(input);
    }
    function innerValValue()public returns(uint) {
        return innerVal;
    }

}

*/

contract A {
    uint innerVal = 100;

    function innerAddTen(uint input) public pure returns(uint){  // read only --> pure, we are returning a calculation and we are not going to change the calculation
        return input + 10;
    }

}

contract B is A {
    function outerAddTen(uint input) public pure returns(uint){
        return A.innerAddTen(input);  // we grab the function from contract 
    }
    function getInnerVal()public view returns(uint) {
        return A.innerVal;
    }

}
