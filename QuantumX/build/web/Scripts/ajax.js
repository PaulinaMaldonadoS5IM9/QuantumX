/* 
 * Ajax method Scripts
 */
//alert (dataString);return false;
function like(id_post){
        var id_L = document.getElementById('Li'+id_post); 
        var id_D = document.getElementById('Di'+id_post); 
        var user = document.getElementById('user').value; 
        var numberLE = document.getElementById('Ln'+id_post);
        var numberL = parseInt(document.getElementById('Ln'+id_post).textContent);
        var bit = "";
        var chan = "";
        if(id_L.className === 'bx bxs-like bx-md bx-tada-hover'){
            bit = 0;
            var numberL = numberL - 1;
        } else if(id_L.className === 'bx bx-like bx-md bx-tada-hover'){
            bit = 1;
            var numberL = numberL + 1;
            if(id_D.className === 'bx bxs-dislike bx-md bx-tada-hover'){
                chan = "y";
            }
        }
        var dataString = 'user='+ user + '&id_post=' + id_post + '&reaction=likes&bit='+ bit+'&chan='+chan+'&reactionB=dislikes';
        
        $.ajax({
          type: "POST",
          url: "reactions.jsp",
          data: dataString,
          success: function() {
              numberLE.innerHTML = numberL;
              if(bit === 0){
                  id_L.className = 'bx bx-like bx-md bx-tada-hover';
                  id_L.style.color = 'black';
              } else if(bit === 1){
                  id_L.className = 'bx bxs-like bx-md bx-tada-hover';
                  id_L.style.color = 'green';
                  
                  if(chan === "y"){
                    id_D.className = 'bx bx-dislike bx-md bx-tada-hover';
                    id_D.style.color = 'black';
                    var numberDE = document.getElementById('Dn'+id_post);
                    var numberD = parseInt(document.getElementById('Dn'+id_post).textContent);
                    numberD = numberD-1;
                    numberDE.innerHTML = numberD;
                  }
              }
          }, 
          error: function() {
              alert('Error');
          }
        });
  }
  
function dislike(id_post){
        var id_L = document.getElementById('Li'+id_post); 
        var id_D = document.getElementById('Di'+id_post); 
        var user = document.getElementById('user').value; 
        var numberDE = document.getElementById('Dn'+id_post);
        var numberD = parseInt(document.getElementById('Dn'+id_post).textContent);
        var bit = "";
        var chan = "";
        if(id_D.className === 'bx bxs-dislike bx-md bx-tada-hover'){
            bit = 0;
            var numberD = numberD - 1;
        } else if(id_D.className === 'bx bx-dislike bx-md bx-tada-hover'){
            bit = 1;
            var numberD = numberD + 1;
            if(id_L.className === 'bx bxs-like bx-md bx-tada-hover'){
                chan = "y";
            }
        }
        var dataString = 'user='+ user + '&id_post=' + id_post + '&reaction=dislikes&bit='+ bit+'&chan='+chan+'&reactionB=likes';
        
        $.ajax({
          type: "POST",
          url: "reactions.jsp",
          data: dataString,
          success: function() {
              numberDE.innerHTML = numberD;
              if(bit === 0){
                  id_D.className = 'bx bx-dislike bx-md bx-tada-hover';
                  id_D.style.color = 'black';
              } else if(bit === 1){
                  id_D.className = 'bx bxs-dislike bx-md bx-tada-hover';
                  id_D.style.color = 'red';
                  if(chan === "y"){
                    id_L.className = 'bx bx-like bx-md bx-tada-hover';
                    id_L.style.color = 'black';
                    var numberLE = document.getElementById('Ln'+id_post);
                    var numberL = parseInt(document.getElementById('Ln'+id_post).textContent);
                    numberL = numberL-1;
                    numberLE.innerHTML = numberL;
                  }
              }
          }, 
          error: function() {
              alert('Error');
          }
        });
  }
