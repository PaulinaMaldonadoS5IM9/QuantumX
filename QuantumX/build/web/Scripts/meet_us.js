/* 
 * Meet Us div Scripts
 */
function meet_us(){
    var loginB = document.getElementById('login');
    var registerB = document.getElementById('register');
    var hr = document.getElementById('or');
    var meetB = document.getElementById('meet');
    var returnB = document.getElementById('return');
    var meetUsDiv = document.getElementById('meetUsDiv');
    
    //loginB, registerB, hr, meetB Transition Reset
    loginB.style.transitionDelay = "0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s";
    registerB.style.transitionDelay = "0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s";
    hr.style.transitionDelay = "0s, 0s";
    meetB.style.transitionDelay = "0s, 0s, 0s, 0s";
    
    //Buttons disappear
    loginB.style.transform = "translateY(-100px)";
    loginB.style.opacity = "0";
    loginB.style.cursor = "default";
    loginB.disabled = true;
    registerB.style.transform = "translateY(100px)";
    registerB.style.opacity = "0";
    registerB.style.cursor = "default";
    registerB.disabled = true;
    hr.style.opacity = "0";
    meetB.style.opacity = "0";
    meetB.style.cursor = "default";
    meetB.disabled = true;
    
    //MeetUsDiv, returnB Transition Reset
    meetUsDiv.style.transitionDelay = "1.5s, 1s;";
    meetUsDiv.style.display = "block";
    meetUsDiv.style.opacity = "0";
    returnB.style.transitionDelay = "1s, 0s, 0s";
    
    //Meet Us div appears
    meetUsDiv.style.opacity = "1";
    returnB.style.opacity = "1";
}

