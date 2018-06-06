window.addEventListener('load', function(){
    if(localStorage.getItem("currentStory") !== null){
        nextStory(localStorage.getItem("currentStory"))
    } else {
        nextStory(1)
        document.querySelector('.alert-save').style.display = "block";
    }
})

function button(id){
    var thisStory = document.querySelector('#button' + id).value
    localStorage.setItem("currentStory", thisStory)
    document.querySelector('.alert-save').style.display = "";
    nextStory(thisStory)
}


function nextStory(story){
    var httpRequest = new XMLHttpRequest()
    var data = 'story=' + story
    httpRequest.open('POST', 'includes/readStory.php', true)
    httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
    httpRequest.send(data)
    httpRequest.onreadystatechange = function(){
        if(httpRequest.readyState === 4){
            document.querySelector('.game').innerHTML = httpRequest.responseText
            checkStory(story)
        }
    }
}

function checkStory(story){
    if(story == '31' || story == '44'){
        document.querySelector('.story').style.color = "green"
    } else if (story == '15' || story == '18' || story == '21' || story == '22' || story == '23' || story == '25' || story == '27' || story == '28' || story == '32' || story == '34' || story == '35' || story == '37' || story == '39' || story == '40' || story == '41' || story == '43'){
        document.querySelector('.story').style.color = "red"
    } else {
        document.querySelector('.story').style.color = ""
    }
}