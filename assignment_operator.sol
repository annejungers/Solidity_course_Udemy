pragma >= 0.7.0. < 0.9.0;

/*
assignment operator a = b ( a is assigned the value of b

*/


contract AssignmentOperator{

    uint b =4;
    uint a = 3;

    function assign() public view returns(uint){
        uint c =2;

        // return c + c + b
        //return c = c +c +b;
        return c +=c +b; // += is a short handed way to write x + x + y  --> x += x +y
    }
}

/* final operator exercise

create a contract called final exercise
initialize 3 state variables a, b, f
assign each var the following: a should equal 300, b should equal 12, f should equal 47
create a function called finalize that is public and viewable which returns a local variable d
initialize variable d to 23
return d in short handed assignment form to multiply itself by itself and then substracted by b
bonus make the function conditional so that it will ony return the multiplication if a is greater than or equal

*/


contract finalExercise{

    uint a = 300;
    uint b = 12 ;
    uint f = 47;

    function finalize() public view returns(uint){
        uint d = 23;
        if(a >= b && b<= f){
            d*= d;
            return d - b;
        } else {
            return d;
        }
    }

}