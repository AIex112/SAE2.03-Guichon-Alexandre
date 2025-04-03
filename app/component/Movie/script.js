let templateFile = await fetch("./component/Movie/template.html");
let template = await templateFile.text();

let Movie = {};

Movie.format = function (movies) {
  let html = "";
  movies.forEach((movie) => {
  let moviehtml = template;
  moviehtml = moviehtml.replace("{{nom}}", movie.name);
  moviehtml = moviehtml.replace("{{affiche}}", movie.image);
  html += moviehtml;
  });
  return html;
};

export { Movie };