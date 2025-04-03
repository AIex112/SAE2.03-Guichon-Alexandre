<?php

require("model.php");

function readMoviesController(){
    $movies = getMovie();
    return $movies;
}