pragma solidity >= 0.7.0 < 0.9.0;

/*

enums = enumerated list (values in the list = enums)
restriction for variables
restrict the variable to only a few predefined values  (and then eventually the values that you would create

why would we restrict the variables?? 
to reduce the number of bugs in our code
--> if we say that this variable can only do these things, it is never going to do something else

enums can be a great tool if we only have predefined values, like here 3 sizes LARGE-MEDIUM-SMALL
we don't have to worry about bugs like EXTRA-LARGE

*/


// create an enum for food app that offer either large or small options
contract enumsLearn{
    enum frenchFriessize{LARGE, MEDIUM, SMALL}  // index 0 - 1 - 2
    frenchFriessize choice;
    frenchFriessize constant defaultChoice = frenchFriessize.MEDIUM;//default

    // but let's say we want to switch to SMALL, how do we write this functionnality with enums (which action to perform)
    function setSmall() public{
    choice = frenchFriessize.SMALL;
    }

    function getChoice()public view returns(frenchFriessize){
        return choice;
    }


    function getDefaultChoice()public view returns(uint){
        return uint(defaultChoice);
    }


}

/*

exo 

create:
1. an enum for shirts color called shirtColor and set it to the options of either RED or WHITE or GREEN
2. a data of shirtColor called defaultChoice which is a constant set to the color blue
3. " "     "    "          "   choice and don't initiate the value
4. a function called setWhite which changes the shirt color of shirtColor to white
5. a function called getChoice which returns the current choice of shirtColor
6. a function called getDefaultChoice which returns the default choice of shirtColor

*/

contract ColorOptions{

    enum shirtColor{RED, WHITE, BLUE}
    shirtColor constant defaultChoice = shirtColor.BLUE;
    shirtColor choice;



    function setWhite() public{
        choice = shirtColor.WHITE;
    }

    function getChoice()public view returns(shirtColor){// we return the data type
        return choice;
    }

    function getDefaultChoice()public view returns(uint){
        return uint(defaultChoice);
    }


    



}