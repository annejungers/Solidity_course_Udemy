pragma solidity >= 0.7.0 < 0.9.0;

/*
NOTES
Dapp is a decentralized application that runs on a blockchain/ a Peer 2 Peer network 
and it is not controlled by any single authority

ex Uber/twitter run on a computer system
it is owned by an organization
Uber/twitter have a CEO, their data are stored stored in data centers
and they have full authority over the app and its working

>< Dapps
run on blockchain/P2P networks, opensource, decentralized environment
like bitTorrent, applications that runs on computer that are part on P2P network

*/

/*
RESTRICTED ACCESS to a Contract is a common practice.
By Default, a contract state is read-only unless it is specified as public.

We can restrict who can modify the contract's state or call a contract's functions using modifiers.
Let us build a contract with modified restricted access with the following common writeouts:

   onlyBy  - only the mentioned caller can call this function  - (similar to onlyOwner)
                we only want a certain address to use the function

   onlyAfter - called after a certain time period  (modification for time)
                this can't run right away, we need a little bit a time to pass before that happen

   costs - call this function only if a certain value is provided
*/

contract RestrictedAccess{

    address public owner = msg.sender;
    uint public creationTime  = block.timestamp; // we use the block.timestamp var
                                // means that whenever something is created, we can set it to the time it gets created on the blockchain

    //write a modifier onlyBy that will require the current caller to be equal to
    // an account address which we set as an input in the modifier 
    // and if the requirement fails send a message that says - "Sender not authorized!"
    modifier onlyBy(address _account){
        require(msg.sender == _account, "Seder not authorized!");
        _;
    }

    modifier onlyAfter(uint _time){
        require(block.timestamp >= _time, "function is called too early!");
        _;
    }

    // function that change this owner of the contract (we need to change the owner address)
    function ChangeOwnerAddress(address _newAddress) public onlyBy(owner) {
        owner = _newAddress;

    }

    // write a function that can disown the current owner 
    // only run the function 3 weeks or 5 secocds after the creation of the contract
    function disown() onlyBy(owner) onlyAfter(creationTime + 5 seconds) public {
        delete owner;
    }


    /*
    Exercise:
    1. Create a modifier called osts which takes an _amount parameter
    2. Require that msg.value is greater than or equal to the amount
    3. If the msg.value is not greather than or equal to the amount
        return a string that says Not enough Ether provided
    4. Write a function called forceOwnerChange which takes an address called _newOwner and is payable
    5. Add a modification to the signature so that the function needs 200 ehter  to execute
    6. Set the owner of the contract to the new owner of the address
    7. BONUS****** Figure out how to make the function actually run!!
    */

    modifier costs(uint _amount){
        require(msg.value >= _amount, "Not enough Ether provided");
        _;
    }

    function forceOwnerChange(address _newOwner) payable public costs(200 ether){
        owner = _newOwner;
    }


}