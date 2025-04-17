let HOST_URL = "https://guichon-sae203.mmi-limoges.fr";

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

