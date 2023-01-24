pragma solidity >= 0.7.0 < 0.9.0;

/*
Solidity provides an option to use assembly language to write  inline assembly within Solidity source code.

Assembly is a low level language that allows you to directly manipulate the EVM (more dangerous and not recommended)

EVM = smart contracts are not the real code in the blockchain - solidity code is compiled  to a lower level language
*/

contract LearnAssembly {
    function addToEVM() external{
        uint x;
        uint y;
        uint z;
    }

    // all of this is compiled to low level instructions (opcodes - in total there is around 100)

    // how the heck to we use assembly? 

    assembly {
        // declares an assembly block
        //inside we can manipulate  variables declared outside
        // no semi colon, - is actually :- and we can bring in opcodes
        let  z := add ( x, y)  // we bring the add opcode in the opcode documentation on ethereum doc

        // we can run for loop
        
        // how to load data in an assembly?  load data for a specific slot
        let  a:= load(0x40)

        // store something temporarily on assembly
        //mstore(a, 4)

        // store with persistance storage
        //sstore(a, 100)



    }

    // in EVM everything is stored in slots of 256 bits ( ex a variable a uint occupies one slot)
    // whereas mapping or array is several


    // how to work with assembly
    function addToEVM2() public view returns(bool success) {
        uint size;

        // assembly whether an address contains any bytes of code or not 
        assembly {
            size := extcodesize(addr)
        }

        if(size >0) { return true;
        }else {
            return false;
        }

    }
}