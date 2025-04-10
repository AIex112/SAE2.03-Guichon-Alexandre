let HOST_URL = "https://mmi.unilim.fr/~guichon3/SAE2.03-Guichon-Alexandre";

let DataProfile = {};

DataProfile.addProfile = async function(formdata){
    let config = {
        method: "POST",
        body: formdata
    };
    let response = await fetch(HOST_URL + "/server/script.php?todo=addProfile", config);
    return await response.json();
};

export {DataProfile};