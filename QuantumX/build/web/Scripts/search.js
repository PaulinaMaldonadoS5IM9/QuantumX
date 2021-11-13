/* 
 * Search Scripts
 */
function search(){
    var searchDiv = document.getElementById('searchDiv');
    var profileSTd = document.getElementById('profileSTd');
    var postSTd = document.getElementById('postSTd');
    var profileSB = document.getElementById('profileSB');
    var postSB = document.getElementById('postSB');
    var searchUTd = document.getElementById('searchUTd');
    var searchPTd = document.getElementById('searchPTd');
    
    if(profileSB.style.opacity !== "1") {
        searchDiv.style.minHeight = "33vh";
        profileSB.style.opacity = "1";
        profileSTd.style.height = "12vh";
        postSB.style.opacity = "1";
        postSTd.style.height = "12vh";
    } 
    else if(profileSB.style.opacity !== "0") {
        searchDiv.style.minHeight = "11vh";
        profileSB.style.opacity = "0";
        postSB.style.opacity = "0";
        searchUTd.style.opacity = "0";
        searchPTd.style.opacity = "0";
    }
}

function searchUser(){
    var searchUTd = document.getElementById('searchUTd');
    
    if(searchUTd.style.opacity !== "1") {
        searchUTd.style.opacity = "1";    
    } 
    else if(searchUTd.style.opacity !== "0") {
        searchUTd.style.opacity = "0";    
    }
}

function searchPost(){
    var searchPTd = document.getElementById('searchPTd');
    
    if(searchPTd.style.opacity !== "1") {
        searchPTd.style.opacity = "1";    
    } 
    else if(searchPTd.style.opacity !== "0") {
        searchPTd.style.opacity = "0";    
    }
}

