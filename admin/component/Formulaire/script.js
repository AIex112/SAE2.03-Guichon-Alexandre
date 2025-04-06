let templateFile = await fetch('./component/Formulaire/template.html');
let template = await templateFile.text();

let NewMovieForm = {};

NewMovieForm.format = function () {
  return template;
};

export { NewMovieForm };
