
// on text change
function unlockButton() {
    var loginForm = document.getElementById("log-in-form");
    var signUpForm = document.getElementById("sign-up-form");
    var fields = [];

    if (loginForm.hidden) {
        var username = document.getElementById("usernameSU");
        var email = document.getElementById("emailSU");
        var password = document.getElementById("passwordSU");
        var button = document.getElementById("sign-up-button");
        fields = [username, email, password];
    	
    } else {
        var username = document.getElementById("usernameLI");
        var password = document.getElementById("passwordLI");
        var button = document.getElementById("log-in-button");
        fields = [username, password];
    }

    validateForm(signUpForm, fields, button);
}
function validateForm(form, fields, button) {
    var isValid = true;
    
    for (i = 0; i < fields.length; i++) {
        if (fields[i].value === "") {
            isValid = false;
            break;
        }
    }
    // button.classList.add(isValid == true ? "buttonEnable" : "buttonDisable");
    // button.classList.remove(isValid == true ? "buttonDisable" : "buttonEnable");
    button.disabled = !isValid;

    return isValid;
}

function validate(signUpFlag, obj) {
    var loginForm = document.getElementById("log-in-form");
    var signUpForm = document.getElementById("sign-up-form");

    if (loginForm.hidden && signUpForm.hidden) {
        showSignUp(signUpFlag);
        return;
    }

    if (obj.id == 'sign-up-button') {
        if (loginForm.hidden)
            alert('auth');
        else {
            showSignUp(signUpFlag);
        }
    }
    if (obj.id == 'log-in-button') {
        if (signUpForm.hidden)
            validateUser()
        else
            showSignUp(signUpFlag);
    }
}

function showSignUp(signUpFlag) {
    if (signUpFlag == true) {
        document.getElementById("log-in-form").hidden = true;
        document.getElementById("sign-up-form").hidden = false;

        document.getElementById("sign-up-button").classList.add("matter-button-contained");
        document.getElementById("sign-up-button").classList.remove("matter-button-outlined");
        unlockButton();
        // document.getElementById("sign-up-button").disabled = true;

        document.getElementById("log-in-button").classList.add("matter-button-outlined");
        document.getElementById("log-in-button").classList.remove("matter-button-contained");        
        document.getElementById("log-in-button").disabled = false;
    } else {
        // log-in
        document.getElementById("log-in-form").hidden = false;
        document.getElementById("sign-up-form").hidden = true;
        
        document.getElementById("sign-up-button").classList.remove("matter-button-contained");
        document.getElementById("sign-up-button").classList.add("matter-button-outlined");
        document.getElementById("sign-up-button").disabled = false;

        document.getElementById("log-in-button").classList.remove("matter-button-outlined");
        document.getElementById("log-in-button").classList.add("matter-button-contained");
        // document.getElementById("log-in-button").disabled = true;
        unlockButton();
    }
}

function validateUser()
{
    const localPasswd = 1;
    const localUser = '1'
    var username = document.getElementById("usernameLI");
    var password = document.getElementById("passwordLI");
    if (password.value == localPasswd && username.value === localUser){
        alert('true');
        window.location.href = './home.html'
    }
    
}