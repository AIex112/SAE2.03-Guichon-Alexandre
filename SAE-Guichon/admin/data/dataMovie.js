let HOST_URL = "https://guichon-sae203.mmi-limoges.fr";

let DataMovie = {};

DataMovie.requestMovies = async function(){
    let answer = await fetch(HOST_URL + "/server/script.php?todo=movies");
    let data = await answer.json();
    return data;
}

DataMovie.update = async function (moviedata){
    let config = {
        method: "POST",
        body: moviedata
    };
    let answer = await fetch(HOST_URL + "/server/script.php?todo=postMovie", config);
    let data = await answer.json();
    return data;
}

export {DataMovie};
