<?php
/**
 * Ce fichier contient toutes les fonctions qui réalisent des opérations
 * sur la base de données, telles que les requêtes SQL pour insérer, 
 * mettre à jour, supprimer ou récupérer des données.
 */

/**
 * Définition des constantes de connexion à la base de données.
 *
 * HOST : Nom d'hôte du serveur de base de données, ici "localhost".
 * DBNAME : Nom de la base de données
 * DBLOGIN : Nom d'utilisateur pour se connecter à la base de données.
 * DBPWD : Mot de passe pour se connecter à la base de données.
 */
define("HOST", "localhost");
define("DBNAME", "guichon3");
define("DBLOGIN", "guichon3");
define("DBPWD", "guichon3");

function getMovie(){
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    $sql = "select id, name, image from Movie";
    $stmt = $cnx->prepare($sql);
    $stmt->execute();
    $res = $stmt->fetchAll(PDO::FETCH_OBJ);
    return $res;
}

function updateMovie($n, $y, $l, $de, $di, $id, $im, $t, $m){
    // Connexion à la base de données
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD); 
    // Requête SQL de mise à jour du menu avec des paramètres
    $sql = "INSERT INTO Movie (name, year, length, description, director, id_category, image, trailer, min_age) 
            VALUES (:name, :year, :length, :description, :director, :id_category, :image, :trailer, :min_age)";
    // Prépare la requête SQL
    $stmt = $cnx->prepare($sql);
    // Lie les paramètres aux valeurs
    $stmt->bindParam(':name', $n);
    $stmt->bindParam(':year', $y);
    $stmt->bindParam(':length', $l);
    $stmt->bindParam(':description', $de);
    $stmt->bindParam(':director', $di);
    $stmt->bindParam(':id_category', $id);
    $stmt->bindParam(':image', $im);
    $stmt->bindParam(':trailer', $t);
    $stmt->bindParam(':min_age', $m);
    // Exécute la requête SQL
    $stmt->execute();
    // Récupère le nombre de lignes affectées par la requête
    $res = $stmt->rowCount(); 
    return $res; // Retourne le nombre de lignes affectées
}

function getMovieDetail($id){
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD); 
    $sql = "SELECT Movie.*, Category.name AS category_name
            FROM Movie
            INNER JOIN Category ON Movie.id_category = Category.id
            WHERE Movie.id = :id";
    $stmt = $cnx->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();
    $res = $stmt->fetch(PDO::FETCH_OBJ); 
    return $res; 
}

function getMovieCategory(){
    try {
        $cnx = new PDO("mysql:host=" . HOST . ";dbname=" . DBNAME, DBLOGIN, DBPWD, [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        ]);

        $sql = "SELECT 
                    Category.id AS category_id, 
                    Category.name AS category_name, 
                    Movie.id AS movie_id,
                    Movie.name AS movie_name, 
                    Movie.image AS movie_image
                FROM Movie
                JOIN Category ON Movie.id_category = Category.id
                ORDER BY Category.id";

        $stmt = $cnx->query($sql);
        $rows = $stmt->fetchAll(PDO::FETCH_OBJ);

        $category = [];
        foreach ($rows as $row) {
            if (!isset($category[$row->category_id])) {
                $category[$row->category_id] = [
                    "name" => $row->category_name,
                    "movie" => []
                ];
            }
            $category[$row->category_id]["movie"][] = [
                "id" => $row->movie_id,
                "name" => $row->movie_name,
                "image" => $row->movie_image
            ];
        }

        return array_values($category);
    } catch (Exception $e) {
        error_log("Erreur SQL : " . $e->getMessage());
        return false;
    }

}