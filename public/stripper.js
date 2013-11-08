window.onload = function() {
  var stripper = document.querySelector("img#stripper");
  var bill = document.querySelector('input#cash-selecta');

  stripper.addEventListener('mouseover', function() {
    if (bill.value === '1' || bill.value === '5' || bill.value === '10' || bill.value === '20' || bill.value === '50' || bill.value === '100') {
      makeRain(this);
    } else if (bill.value === "") {
      alert("Pick a denomination!");
    }
    else {
      alert("Really...a $" + bill.value + "bill?");
    }
  });

}

function makeRain() {
  var div = document.createElement("div");
  var bill = document.querySelector('input#cash-selecta');

  var sweetSpots = ["240", "260", "280", "300", "320"];
  var index = Math.floor((Math.random() * sweetSpots.length));

  div.innerHTML = "$" + bill.value;
  div.className = "dollas";
  div.style.left = sweetSpots[index] + "px";
  document.body.appendChild(div);
  
  renderRacks();
  highRoller();

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

function highRoller() {
  var racksSpent = document.querySelector('span');
  var dollarAmount = parseInt(racksSpent.innerHTML);

  if (dollarAmount > 10000 && dollarAmount < 10100) {
    alert("HIGH ROLLER alert!");
  }
}
