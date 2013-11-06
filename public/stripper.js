window.onload = function() {
  var stripper = document.querySelector("img#stripper");
  var bill = document.querySelector('input#cash-selecta');

  stripper.addEventListener('mouseover', function() {
    if (bill.value === '1' || bill.value === '5' || bill.value === '10' || bill.value === '20' || bill.value === '50' || bill.value === '100') {
      makeRain(this);
    } else {
      alert("Really...a $" + bill.value + "bill?")
    }

  });

  // setInterval( moveDollas, 500);
}

function makeRain() {
  var div = document.createElement("div");
  var bill = document.querySelector('input#cash-selecta');

  div.innerHTML = "$" + bill.value;
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
  var bill = document.querySelector('input#cash-selecta');
  racksSpent.innerHTML = number += parseInt(bill.value);
  racksSpent.color = "green";
}

// function moveDollas() {
//   var dollas = document.getElementsByClassName("dollas");

//   for (var i=0; i < dollas.length; i++) {
//     dollas[i].style.bottom = (parseInt(dollas[i].style.bottom) - 10).toString();
//     console.log(dollas[i]);
//   }
// }