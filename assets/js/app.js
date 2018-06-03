window.addEventListener('load', function(){
    nextStory(1)
})

function button(id){
    var thisStory = document.querySelector('#button' + id).value
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
        }
    }
}