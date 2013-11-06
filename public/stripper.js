window.onload = function() {
  var stripper = document.querySelector("img#stripper");

  stripper.addEventListener('mouseover', function() {
    makeRain(this);
  });

  // setInterval( moveDollas, 500);
}

function makeRain() {
  var div = document.createElement("div");
  div.innerHTML = "$1";
  div.className = "dollas";
  document.body.appendChild(div);
  
  renderRacks();

  tunes();
}

function tunes() {
  var audio = document.querySelector('audio');
  audio.play();
}

function renderRacks() {
  var racksSpent = document.querySelector('span');
  var number = parseInt(racksSpent.innerHTML);
  racksSpent.innerHTML = number += 1;
  racksSpent.color = "green";
}

// function moveDollas() {
//   var dollas = document.getElementsByClassName("dollas");

//   for (var i=0; i < dollas.length; i++) {
//     dollas[i].style.bottom = (parseInt(dollas[i].style.bottom) - 10).toString();
//     console.log(dollas[i]);
//   }
// }