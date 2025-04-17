let HOST_URL = "https://guichon-sae203.mmi-limoges.fr";

let DataProfil = {};

DataProfil.readProfil = async function () {
  let answer = await fetch(HOST_URL + "/server/script.php?todo=readProfil");
  let profil = await answer.json();
  return profil;
};

export { DataProfil };
