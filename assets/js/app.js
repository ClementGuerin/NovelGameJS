// Init

window.addEventListener('load', function(){
    // Take last save if she exist
    if(localStorage.getItem("currentStory") !== null){
        nextStory(localStorage.getItem("currentStory"))
    } else {
        nextStory(1)
        document.querySelector('.alert-save').style.display = "block"
    }
    // Create audio player
    createAudio()
})

// Buttons inside replies.php (onclick in buttons element)

function button(id){
    var thisStory = document.querySelector('#button' + id).value
    // Save current story in localStorage
    localStorage.setItem("currentStory", thisStory)
    // Hide alert-save if one button is clicked
    if(document.querySelector('.alert-save').style.display == "block"){
        document.querySelector('.alert-save').style.display = ""
    }
    nextStory(thisStory)
}

// Get next Story with Ajax request

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

// Check if current Story is good or bad ending

function checkStory(story){
    if(story == '31' || story == '44'){
        document.querySelector('.story').style.color = "green"
    } else if (story == '15' || story == '18' || story == '21' || story == '22' || story == '23' || story == '25' || story == '27' || story == '28' || story == '32' || story == '34' || story == '35' || story == '37' || story == '39' || story == '40' || story == '41' || story == '43'){
        document.querySelector('.story').style.color = "red"
    } else {
        document.querySelector('.story').style.color = ""
    }
}

// Audio player & Controls

function createAudio(){
    var player = document.createElement("AUDIO")
    player.src = "assets/songs/soundtrack.mp3"
    player.loop = true
    player.volume = 0.1
    player.play()
    document.querySelector('.player').appendChild(player)
}

document.querySelector('.speaker-on').addEventListener('click', function(){
    var player = document.querySelector('.player audio')
    player.pause()
    document.querySelector('.speaker-on').style.display = "none";
    document.querySelector('.speaker-off').style.display = "block";
})

document.querySelector('.speaker-off').addEventListener('click', function(){
    var player = document.querySelector('.player audio')
    player.play()
    document.querySelector('.speaker-off').style.display = "none";
    document.querySelector('.speaker-on').style.display = "block";
})