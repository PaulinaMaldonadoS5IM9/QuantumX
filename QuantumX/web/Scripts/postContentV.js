/* 
 * Post Contect Script
 */

function oneHLetters(){
    var content = document.getElementById('text').value.toString();
    var length = content.length;
    if(length > 2000) {
        alert("No se acepta mas de 2000 caracteres");
    }
}

