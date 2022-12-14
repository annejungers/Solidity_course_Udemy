// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;


/*
structs are solidity types that are used to represent a record

Ex: you want to keep track of your movies in a library
you need to track the following attributes for each movie

we can create libraries of information (data can be of different types)

*/

contract LearnStructs {

    struct Movie {
        string title;
        string director;
        uint movie_id;
    }

    Movie movie; // the lowercase movie is a variable  --> we set variables
                 // we an set other variables like Movie scary; Movie comedy; 



    //Create a function that will add information in struct
    // when we bring the struct Movie, it is going to go through this "list" of items
    function setMovie() public{
        movie = Movie("Ridley Scott", "Blade Runner", 1);
    }

    function getMovieId() public view returns(uint){
        return movie.movie_id;
    }

}

/*

exo
1. Create a new Movie and set it up so that it updates to the movie in the setMovie function
2. Return the id of the new movie
3. Create a new variable called comedy and set up comedy to the datatype Movie
4. Update the setMovie function with a comedy movie that contains name, director and an id
5. return the movie id of the comedy

*/

contract StructExercise {


    struct Movie{
        string title;
        string director;
        uint movie_id;
        
    }

    Movie movie;
    Movie newMovie;
    Movie comedy;

    function setMovie() public{
        movie = Movie("Blade Runner ", " Ridley Scott", 1 );
        newMovie = Movie("SnowWhite", "Disney", 2);
        comedy = Movie("le flic de Beverlyhills", "Luc Thomas", 3);
    }


    function getMovie() public view returns(uint){
        return comedy.movie_id;

    }
}