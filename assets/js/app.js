window.addEventListener('load', function(){
    var httpRequest = new XMLHttpRequest()
    this.story = 1
    var data = 'story=' + this.story
    httpRequest.open('POST', 'includes/readStory.php', true)
    httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
    httpRequest.send(data)
    httpRequest.onreadystatechange = function(){
        if(httpRequest.readyState === 4){
            document.querySelector('.ajax').innerHTML = httpRequest.responseText
        }
    }
})

function button(id){
    var story = document.querySelector('#button' + id).value
    nextStory(story)
}


function nextStory(story){
    var httpRequest = new XMLHttpRequest()
    var data = 'story=' + story
    httpRequest.open('POST', 'includes/readStory.php', true)
    httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
    httpRequest.send(data)
    httpRequest.onreadystatechange = function(){
        if(httpRequest.readyState === 4){
            document.querySelector('.ajax').innerHTML = httpRequest.responseText
        } else {
            document.querySelector('.ajax').innerHTML = "Chargement"
        }
    }
}