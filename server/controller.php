<?php

require("model.php");

function readMoviesController(){
    $movies = getMovie();
    return $movies;
}

function updateController(){
    /* Lecture des données de formulaire
      On ne vérifie pas si les données sont valides, on suppose (faudra pas toujours...) que le client les a déjà
      vérifiées avant de les envoyer 
    */
    $name = $_REQUEST['name'];
    $year = $_REQUEST['year'];
    $length = $_REQUEST['length'];
    $description = $_REQUEST['description'];
    $director = $_REQUEST['director'];
    $id_category = $_REQUEST['id_category'];
    $image = $_REQUEST['image'];
    $trailer = $_REQUEST['trailer'];
    $min_age = $_REQUEST['min_age'];
    // Mise à jour du menu à l'aide de la fonction updateMenu décrite dans model.php
    $ok = updateMovie($name, $year, $length, $description, $director, $id_category, $image, $trailer, $min_age);
    // $ok est le nombre de ligne affecté par l'opération de mise à jour dans la BDD (voir model.php)
    if ($ok!=0){
      return "Le Film $name a été ajouté";
    }
    else{
      return "Erreur lors de l'ajout du film $name";
    }
  }

function readMovieDetailController(){
    if (!isset($_REQUEST['id'])){
        echo json_encode('[error] Missing id parameter');
        http_response_code(400); // 400 == "Bad request"
        exit();
    }
    $id = $_REQUEST['id'];
    $movie = getMovieDetail($id);
    return $movie;
}

function readMovieCategoryController(){
    $categories = getMovieCategory();
    return $categories;
}
