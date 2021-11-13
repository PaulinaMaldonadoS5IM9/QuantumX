/* 
 * Search Validation Scripts
 */

function onlyOLetter(){
    var searchP = document.getElementById('searchP').value.toString();
    var length = searchP.length;
    var validate = false;
    for (var i = 0; i < length; i++) {
        if(searchP.charAt(i) !== " "){
            validate = true;
        } else {
            validate = false;
        }
    }
    if(validate === false) {
        alert("Solo se admite una palabra");
    }
}
