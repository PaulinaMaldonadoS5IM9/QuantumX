window.onload = function() {
  category();
};
function category(){
    var category = document.getElementById("subject").getAttribute("category");
    var ImageC = document.getElementById(category);
    ImageC.src = "Home/Imagenes/"+category+"B.png";
}

function cambiar(id) {
    var table = document.getElementById(id);
    if(table.style.display === "none"){
       table.style.display = "inline"; 
    } else{
        table.style.display = "none";
    }
}
//$("#pub").click(function(){
//  var btn = $(this);
//  btn.prop('disabled', true);
//  setTimeout(function(){
//    btn.prop('disabled', false);
//  },15000);
//});

