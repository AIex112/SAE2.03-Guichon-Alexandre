let templateFile = await fetch("./component/MovieDetail/template.html");
let template = await templateFile.text();

let MovieDetail = {};

MovieDetail.format = function (movie) {
  let html = template;
  html = html.replace("{{affiche}}", movie.image);
  html = html.replace("{{nom}}", movie.name);
  html = html.replace("{{description}}", movie.description);
  html = html.replace("{{realisateur}}", movie.director);
  html = html.replace("{{annee}}", movie.year);
  html = html.replace("{{duree}}", movie.length);
  html = html.replace("{{categorie}}", movie.id_category);
  html = html.replace("{{restriction}}", movie.min_age);
  html = html.replace("{{trailer}}", movie.trailer);
  return html;
}

export { MovieDetail };