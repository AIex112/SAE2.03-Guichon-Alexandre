let templateFile = await fetch('./component/Profile/template.html');
let template = await templateFile.text();

let ProfileForm = {};

ProfileForm.format = async function (handler) {
    let templateFile = await fetch('./component/Profile/template.html');
    let template = await templateFile.text();
    let html = template.replace('{{handler}}', handler);
    return html;
};

export { ProfileForm };