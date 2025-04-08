import { Movie } from "../Movie/script.js";

let templateFile = await fetch("./component/MovieCategory/template.html");
let template = await templateFile.text();

let MovieCategory = {};

MovieCategory.format = function (category) {
  let html = template;
  html = html.replace("{{nom}}", category.name);

  let movieHtml = Movie.format(category.movies || []);
  html = html.replace("{{movies}}", movieHtml);
};

export { MovieCategory };