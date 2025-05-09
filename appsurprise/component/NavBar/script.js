let templateFile = await fetch("./component/NavBar/template.html");
let template = await templateFile.text();

let NavBar = {};

NavBar.format = function (handlerMovies, handlerProfil, profils) {
  let html = template;
  html = html.replace("{{handlerMovies}}", handlerMovies);
  html = html.replace("{{handler}}", handlerProfil);

  let profil = "";
  for (let i = 0; i < profils.length; i++) {
    let p = profils[i];
    profil += `<option value="${p.name}" data-img="${p.image}" data-dob="${p.age}">${p.name}</option>`;
  }

  let photo = profils[0]?.image || "default.jpg";
  html = html.replace("{{profil}}", profil);
  html = html.replace("{{photo}}", photo);
  return html;
};

export { NavBar };
