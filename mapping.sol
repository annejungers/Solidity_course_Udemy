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

    mapping(address => uint) public myMap;   // each address will have its own value --> address : 1; address : 2,...
                                            // here the key is address
                                            //myMap takes keys and values
    
    // function to get the address
    function getAddress(address _addr) public view returns(uint){
        return myMap[_addr];
    }


    // to give the address a value/ function that can add addresses into our map
    function setAddress(address _addr, uint _i) public{
        myMap[_addr] = _i;
    }

    function removeAddress(address _addr) public{
        delete myMap[_addr];
    }

    /*
    EXO: Mapping Assignment
    0. Create a unique data type as a struct called Movie and give it the string properties: title and director
    1. Create a map called movie which takes a uint as a key and Movie as a value
    2. create a function called addMovie which takes three inputs, movie_id, title and director 
    which assigns a value if an integer to a movie added back to the movie map.
    It should include a title and a director name
    3. Deploy the contract and update the movie information to the movie map with our favorite movies

    */
    
    struct Movie{
        string title;
        string director;
    }

    mapping(uint => Movie) public movie;

    function addMovie(uint id, string memory title, string memory director) public{
        movie[id] = Movie(title, director); // we select the id = the integer for the key, and we can add the title and the director name
    }

    // you can't iterate through a mapping like you iterate on an object in JS or a dictionnary in Python 
    // but there are other ways to achieve the same results

}


/*

if it was JS, and we were using the .map( => ...)  -->???
and we try to get an address that doesn't exist, we would get undefined
it would not bring us its back
but in Solidity, it returns a value of 0

*/