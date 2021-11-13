/* 
 * Log In Scripts
 */
function log_in(){
    var loginB = document.getElementById('login');
    var registerB = document.getElementById('register');
    var hr = document.getElementById('or');
    var meetB = document.getElementById('meet');
    
    var userB = document.getElementById('username');
    var passB = document.getElementById('password');
    var submitB = document.getElementById('submit');
    var returnB = document.getElementById('return');
    
    
    //loginB, registerB, hr, meetB Transition Reset
    loginB.style.transitionDelay = "0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s";
    registerB.style.transitionDelay = "0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s";
    hr.style.transitionDelay = "0s, 0s";
    meetB.style.transitionDelay = "0s, 0s, 0s, 0s";
    
    //registerB, hr, meetB dissapears
    registerB.style.transform = "translateY(120px)";
    registerB.style.opacity = "0";
    registerB.style.cursor = "default";
    registerB.disabled = true;
    hr.style.transform = "translateY(120px)";
    hr.style.opacity = "0";
    meetB.style.opacity = "0";
    meetB.style.cursor = "default";
    meetB.disabled = true;
    
    //loginB moves
    loginB.style.transform = "translateY(-100px)";
    loginB.style.heigth = "200px";
    loginB.style.width = "500px";
    loginB.style.border = "none";
    loginB.style.fontSize = "50px";
    loginB.style.letterSpacing = "10px";
    loginB.style.cursor = "default";
    loginB.disabled = true;
    
    //Form Transition Reset
    userB.style.transitionDelay = "0s, 1s, 1s";
    passB.style.transitionDelay = "0s, 1s, 1s";
    submitB.style.transitionDelay = "0s, 0s, 1s, 1s";
    returnB.style.transitionDelay = "1s, 0s, 0s";
    
    //Form appears
    userB.style.transform = "translateY(220px)";
    userB.style.opacity = "1";
    userB.style.display = "block";
    userB.disabled = false;
    passB.style.transform = "translateY(270px)";
    passB.style.opacity = "1";
    passB.style.display = "block";
    passB.disabled = false;
    submitB.style.transform = "translateY(320px)";
    submitB.style.opacity = "1";
    submitB.style.display = "block";
    submitB.disabled = false;
    returnB.style.opacity = "1";
    returnB.style.cursor = "pointer";
    returnB.disabled = false;
}