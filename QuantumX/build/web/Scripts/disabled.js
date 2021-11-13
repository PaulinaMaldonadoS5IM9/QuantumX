/* 
 * Disable Forms Scripts
 */

function disabled(){
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
    var returnB = document.getElementById('return');
    
    //Disable all forms
    userB.disabled = true;
    passB.disabled = true;
    submitB.disabled = true;
    name.disabled = true;
    lastname.disabled = true;
    user.disabled = true;
    email.disabled = true;
    newPass.disabled = true;
    confirmPass.disabled = true;
    submitRB.disabled = true;
    returnB.disabled = true;
    
//    //Display none
//    userB.style.display = "none";
//    passB.style.display = "none";
//    submitB.style.display = "none";
//    name.style.display = "none";
//    lastname.style.display = "none";
//    user.style.display = "none";
//    email.style.display = "none";
//    newPass.style.display = "none";
//    confirmPass.style.display = "none";
//    submitRB.style.display = "none";
//    
}
