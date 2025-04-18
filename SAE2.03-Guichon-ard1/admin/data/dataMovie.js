let HOST_URL = "https://mmi.unilim.fr/~guichon3/SAE2.03-Guichon-Alexandre-ard1";

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
