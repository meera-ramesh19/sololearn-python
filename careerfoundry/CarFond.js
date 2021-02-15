
let submitButton = document.querySelector('#submit-button');

function clickListener(event) {
    event.preventDefault();
    let submitButton = document.querySelector('#submit-button');

function clickListener(event) {
    event.preventDefault();
    console.log('Button clicked');
}

submitButton.addEventListener('click', clickListener);
    console.log('Button clicked');
}

submitButton.addEventListener('click', clickListener);
function emailValidate(email) {
    if(email.includes('@')) {
        return true;
    }
    else {
        return false;
    }
}
