window.onload = function() {
  var stripper = document.querySelector("img#stripper");

  stripper.addEventListener('mouseover', function() {
    makeRain(this);
  });

  // setInterval( moveDollas, 5000);
}

function makeRain(ho) {
  var div = document.createElement("div");
  div.innerHTML = "$1";
  div.className = "dollas";
  document.body.appendChild(div);
}

function moveDollas() {
  var dollas = document.getElementsByClassName("dollas");

  for (var i=0; i < dollas.length; i++) {
    dollas[i].style.bottom = (parseInt(dollas[i].style.bottom) - 10).toString();
    console.log(dollas[i]);
  }
}