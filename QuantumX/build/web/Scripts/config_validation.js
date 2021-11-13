var ConfirmPassBoolean = false;
function diffPass(){
    var newPass = document.getElementById('newPassword').value;
    var confirmPass = document.getElementById('confirmNewPass').value;
    
    if(newPass !== confirmPass){
        alert('The typed password do not coincide');
    } else{
        ConfirmPassBoolean = true;
    }
    return ConfirmPassBoolean;
}