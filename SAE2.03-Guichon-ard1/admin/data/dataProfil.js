let HOST_URL = "https://mmi.unilim.fr/~guichon3/SAE2.03-Guichon-Alexandre";

let DataProfile = {};

DataProfile.add = async function (formData) {
  let answer = await fetch(HOST_URL + "/server/script.php?todo=addProfile", {
    method: "POST",
    body: formData,
  });
  let response = await answer.json();
  return response;
};

export { DataProfile };

