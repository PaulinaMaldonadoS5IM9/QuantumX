/* 
 * Validate Forms Scripts
 */

// Only Letters Function
function onlyLetter(e){
    var letters = "ABCDEFGHIJKMNLÑOPQRSTUVWXYZabcdefghijkmnlñopqrstuvwxyz_ ";
    var value = e.which || e.keyCode;
    var letter = String.fromCharCode(value);
    var lett = letters.indexOf(letter);
    if(lett === -1){
        alert('Only letters are admited');
        return false;
    } else {
        return true;
    }
}
var ConfirmPassBoolean = false;
function diffPass(){
    var newPass = document.getElementById('newPassword').value;
    var confirmPass = document.getElementById('confirmPass').value;
    
    if(newPass !== confirmPass){
        alert('The typed password do not coincide');
    } else{
        ConfirmPassBoolean = true;
    }
    return ConfirmPassBoolean;
}