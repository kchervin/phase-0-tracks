
function changeStuff(event) {
  event.target.style.backgroundColor = "pink";
}

var button = document.getElementsByTagName("button");
button[0].addEventListener("click", changeStuff);
button[1].addEventListener("click", changeStuff);


function mouseOver(over) {
  over.target.style.border = "2px dashed blue";
}
function mouseOut(over) {
  over.target.style.border = "10px solid blue";
  }

  function imageChange(photo) {
  photo.target.src = "butterfly.png";
}

var photo = document.getElementById('lizard-photo');
photo.addEventListener("mouseover", mouseOver);
photo.addEventListener("mouseout", mouseOut);
photo.addEventListener("click", imageChange);



