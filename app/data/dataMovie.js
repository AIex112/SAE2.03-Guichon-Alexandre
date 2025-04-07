let HOST_URL = "https://mmi.unilim.fr/~guichon3/SAE2.03-Guichon-Alexandre";

let DataMovie = {};

DataMovie.requestMovies = async function(){
    let answer = await fetch(HOST_URL + "/server/script.php?todo=readmovies");
    let data = await answer.json();
    return data;
}

DataMovie.resquestMovieDetails = async function(id){
    let answer = await fetch(HOST_URL + "/server/script.php?todo=readmovie&id=" + id);
    let data = await answer.json();
    return data;
}

export {DataMovie};
