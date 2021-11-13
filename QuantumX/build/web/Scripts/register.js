/* 
 * Register Form Script
 */

function register(){
    var loginB = document.getElementById('login');
    var registerB = document.getElementById('register');
    var hr = document.getElementById('or');
    var meetB = document.getElementById('meet');
    
    var name = document.getElementById('name');
    var lastname = document.getElementById('lastname');
    var user = document.getElementById('user');
    var email = document.getElementById('email');
    var newPass = document.getElementById('newPassword');
    var confirmPass = document.getElementById('confirmPass');
    var submitB = document.getElementById('submitR');
    var returnB = document.getElementById('return');
    
    //loginB, registerB, hr, meetB Transition Reset
    loginB.style.transitionDelay = "0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s";
    registerB.style.transitionDelay = "0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s";
    hr.style.transitionDelay = "0s, 0s";
    meetB.style.transitionDelay = "0s, 0s, 0s, 0s";
    
    //loginB, hr, meetB dissapears
    loginB.style.transform = "translateY(-180px)";
    loginB.style.opacity = "0";
    loginB.style.cursor = "default";
    loginB.disabled = true;
    hr.style.transform = "translateY(-180px)";
    hr.style.opacity = "0";
    meetB.style.opacity = "0";
    meetB.style.cursor = "default";
    meetB.disabled = true;
    
    //registerB moves
    registerB.style.transform = "translateY(-380px)";
    registerB.style.heigth = "200px";
    registerB.style.width = "500px";
    registerB.style.border = "none";
    registerB.style.fontSize = "50px";
    registerB.style.letterSpacing = "10px";
    registerB.style.cursor = "default";
    registerB.disabled = true;
    
    //Form Trasition Reset
    name.style.transitionDelay = "0s, 1s, 1s";
    lastname.style.transitionDelay = "0s, 1s, 1s";
    user.style.transitionDelay = "0s, 1s, 1s";
    email.style.transitionDelay = "0s, 1s, 1s";
    newPass.style.transitionDelay = "0s, 1s, 1s";
    confirmPass.style.transitionDelay = "0s, 1s, 1s";
    submitB.style.transitionDelay = "0s, 0s, 1s, 1s";
    returnB.style.transitionDelay = "1s, 0s, 0s";
    
    //Form appears
    name.style.transform = "translateY(150px)";
    name.style.opacity = "1";
    name.disabled = false;
    lastname.style.transform = "translateY(190px)";
    lastname.style.opacity = "1";
    lastname.disabled = false;
    user.style.transform = "translateY(230px)";
    user.style.opacity = "1";
    user.disabled = false;
    email.style.transform = "translateY(270px)";
    email.style.opacity = "1";
    email.disabled = false;
    newPass.style.transform = "translateY(310px)";
    newPass.style.opacity = "1";
    newPass.disabled = false;
    confirmPass.style.transform = "translateY(350px)";
    confirmPass.style.opacity = "1";
    confirmPass.disabled = false;
    submitB.style.transform = "translateY(390px)";
    submitB.style.opacity = "1";
    submitB.disabled = false;
    returnB.style.opacity = "1";
    returnB.style.cursor = "pointer";
    returnB.disabled = false;
    
}