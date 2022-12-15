// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

/*
Ether Units
Ethereum is the blockchain and Ether is the currency for Ethereum

assert 
we create assertion to test and see if things are true or not
*/

contract LearnEtherUnits {

    function test() public {
        

        //wei is the smallest denomination of Ether
        assert(1000000000000000000 wei == 1 ether ); // 10^18 wei = 1 ether
        assert( 1 wei == 1);

        assert( 1 ether == 1e18);
        // 1 ether == 1e18
        // create an assertion for 2 eths to be equivalent to weis
        assert(2 ether == 2000000000000000000 wei);

    }

    function exercise() public {
        assert(1 minutes == 60 seconds);
        assert( 24 hours == 1440 minutes);
        assert( 1 days == 24 hours);
        assert( 1 weeks == 7 days);

        assert( 10 == 5+5);
    }

}

// Similar to currency, Solidity has time units where lowest unit is second
// and we can use seconds, minutes, hours, days and weeks as suffix to note time

// exo - create the following assertions in a function called exercises:
// Assert equivalences for minutes to seconds, hours to minutes, days to hours, and weeks to days