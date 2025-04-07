let templateFile = await fetch("./component/MovieDetail/template.html");
let template = await templateFile.text();

let MovieDetail = {};

MovieDetail.format = function (movie) {
  let html = template;
  html = html.replace("{{affiche}}", movie.image);
  html = html.replace("{{nom}}", movie.name);
  html = html.replace("{{description}}", movie.description);
  html = html.replace("{{reallisateur}}", movie.realisateur);
  html = html.replace("{{annee}}", movie.annee);
  html = html.replace("{{duree}}", movie.duration);
  html = html.replace("{{categorie}}", movie.categorie);
  html = html.replace("{{restriction}}", movie.restriction);
  html = html.replace("{{trailer}}", movie.trailer);
  return html;
}

export { MovieDetail };