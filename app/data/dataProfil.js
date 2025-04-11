let HOST_URL = "https://mmi.unilim.fr/~guichon3/SAE2.03-Guichon-Alexandre";

let DataProfil = {};

DataProfil.readProfil = async function () {
  let answer = await fetch(HOST_URL + "/server/script.php?todo=readProfil");
  let profil = await answer.json();
  return profil;
};

export { DataProfil };
