/* 
 * Previous Button Scripts
 */

function previous_Log(){
    var loginB = document.getElementById('login');
    var registerB = document.getElementById('register');
    var hr = document.getElementById('or');
    var meetB = document.getElementById('meet');
    
    var userB = document.getElementById('username');
    var passB = document.getElementById('password');
    var submitB = document.getElementById('submit');
    
    var name = document.getElementById('name');
    var lastname = document.getElementById('lastname');
    var user = document.getElementById('user');
    var email = document.getElementById('email');
    var newPass = document.getElementById('newPassword');
    var confirmPass = document.getElementById('confirmPass');
    var submitRB = document.getElementById('submitR');
    
    var meetUsDiv = document.getElementById('meetUsDiv');
    var returnB = document.getElementById('return');
    
    
    if(loginB.style.letterSpacing === "10px"){
        //Form Transition Reset
        userB.style.transitionDelay = "0s, 0s, 0s";
        passB.style.transitionDelay = "0s, 0s, 0s";
        submitB.style.transitionDelay = "0s, 0s, 0s, 0s";
        returnB.style.transitionDelay = "0s, 0s, 0s";

        //Form disappears
        userB.style.transform = "translateY(-20px)";
        userB.style.opacity = "0";
        userB.disabled = true;
        passB.style.transform = "translateY(-70px)";
        passB.style.opacity = "0";
        passB.disabled = true;
        submitB.style.transform = "translateY(-90px)";
        submitB.style.opacity = "0";
        submitB.disabled = true;
        returnB.style.opacity = "0";
        returnB.style.cursor = "default";
        returnB.disabled = true;

        //loginB, registerB, hr, meetB, Transition Reset
        loginB.style.transitionDelay = "0s, 0s, 1s, 1s, 1s, 1s, 1s, 1s, 1s";
        registerB.style.transitionDelay = "0s, 0s, 1s, 1s, 1s, 1s, 1s, 1s, 1s";
        hr.style.transitionDelay = "1s, 1s";
        meetB.style.transitionDelay = "0s, 0s, 1s, 1s";

        //LoginB return
        loginB.style.letterSpacing = "normal";
        loginB.style.fontSize = "25px";
        loginB.style.heigth = "70px";
        loginB.style.width = "250px";
        loginB.style.transform = "translateY(0.25px)";
        loginB.style.border = "3px solid snow";
        loginB.style.cursor = "pointer";
        loginB.disabled = false;

        //registerB, hr, meetB appears
        registerB.style.transform = "translateY(-0.25px)";
        registerB.style.opacity = "1";
        registerB.style.cursor = "pointer";
        registerB.disabled = false;
        hr.style.transform = "translateY(-0.25px)";
        hr.style.opacity = "1";
        meetB.style.opacity = "1";
        meetB.style.cursor = "cursor";
        meetB.disabled = false; 
    }
    else if(registerB.style.letterSpacing === "10px"){
    //Form Trasition Reset
        name.style.transitionDelay = "0s, 0s, 0s";
        lastname.style.transitionDelay = "0s, 0s, 0s";
        user.style.transitionDelay = "0s, 0s, 0s";
        email.style.transitionDelay = "0s, 0s, 0s";
        newPass.style.transitionDelay = "0s, 0s, 0s";
        confirmPass.style.transitionDelay = "0s, 0s, 0s";
        submitRB.style.transitionDelay = "0s, 0s, 0s, 0s";
        returnB.style.transitionDelay = "0s, 0s, 0s";
        
        //Form disappears
        name.style.transform = "translateY(-150px)";
        name.style.opacity = "0";
        name.disabled = true;
        lastname.style.transform = "translateY(-190px)";
        lastname.style.opacity = "0";
        lastname.disabled = true;
        user.style.transform = "translateY(-230px)";
        user.style.opacity = "0";
        user.disabled = true;
        email.style.transform = "translateY(-270px)";
        email.style.opacity = "0";
        email.disabled = true;
        newPass.style.transform = "translateY(-310px)";
        newPass.style.opacity = "0";
        newPass.disabled = true;
        confirmPass.style.transform = "translateY(-350px)";
        confirmPass.style.opacity = "0";
        confirmPass.disabled = true;
        submitRB.style.transform = "translateY(-390px)";
        submitRB.style.opacity = "0";
        submitRB.disabled = true;
        returnB.style.opacity = "0";
        returnB.style.cursor = "default";
        returnB.disabled = true;
        
        //loginB, registerB, hr, meetB, Transition Reset
        loginB.style.transitionDelay = "0s, 0s, 1s, 1s, 1s, 1s, 1s, 1s, 1s";
        registerB.style.transitionDelay = "0s, 0s, 1s, 1s, 1s, 1s, 1s, 1s, 1s";
        hr.style.transitionDelay = "1s, 1s";
        meetB.style.transitionDelay = "0s, 0s, 1s, 1s";
        
        //RegisterB return
        registerB.style.letterSpacing = "normal";
        registerB.style.fontSize = "25px";
        registerB.style.heigth = "70px";
        registerB.style.width = "250px";
        registerB.style.transform = "translateY(0.25px)";
        registerB.style.border = "3px solid snow";
        registerB.style.cursor = "pointer";
        registerB.disabled = false;
        
        //loginB, hr, meetB appears
        loginB.style.transform = "translateY(0.25px)";
        loginB.style.opacity = "1";
        loginB.style.cursor = "pointer";
        loginB.disabled = false;
        hr.style.transform = "translateY(0.25px)";
        hr.style.opacity = "1";
        meetB.style.opacity = "1";
        meetB.style.cursor = "cursor";
        meetB.disabled = false; 
    }
    else if(meetB.disabled === true){
        //MeetUsDiv, returnB Transition Reset
        meetUsDiv.style.transitionDelay = "0s, 0.5s;";
        meetUsDiv.style.display = "none";
        returnB.style.transitionDelay = "0s, 0s, 0s";

        //Meet Us div appears
        meetUsDiv.style.opacity = "0";
        returnB.style.opacity = "0";
        
        //loginB, registerB, hr, meetB Transition Reset
        loginB.style.transitionDelay = "0s, 0s, 1s, 1s, 1s, 1s, 1s, 1s, 1s";
        registerB.style.transitionDelay = "0s, 0s, 1s, 1s, 1s, 1s, 1s, 1s, 1s";
        hr.style.transitionDelay = "1s, 1s";
        meetB.style.transitionDelay = "0s, 0s, 1s, 1s";
    
        //Buttons disappear
        loginB.style.transform = "translateY(0.25px)";
        loginB.style.opacity = "1";
        loginB.style.cursor = "cursor";
        loginB.disabled = false;
        registerB.style.transform = "translateY(-0.25px)";
        registerB.style.opacity = "1";
        registerB.style.cursor = "cursor";
        registerB.disabled = false;
        hr.style.opacity = "1";
        meetB.style.opacity = "1";
        meetB.style.cursor = "cursor";
        meetB.disabled = false;
    }
}


