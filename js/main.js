(() => {

//Variables
const playerCon = document.querySelector("#player-container");
const player = document.querySelector("video");
const videoControls = document.querySelector("#video-controls");
const playButton = document.querySelector("#play-button");
const pauseButton = document.querySelector("#pause-button");
const stopButton = document.querySelector("#stop-button");
const volumeSlider = document.querySelector("#change-vol");
const fullScreen = document.querySelector("#full-screen");

const hamburgerIcon = document.querySelector(".hamburger-icon");


//Functions
player.controls = false;
videoControls.classList.remove("hidden");

function playVideo() {
  player.play();
}

function pauseVideo() {
  player.pause();
}

function stopVideo() {
  player.pause();
  player.currentTime = 1;
}

function changeVolume() {
  player.volume = volumeSlider.value;
  console.log(volumeSlider.value);
}


//Event Listeners
playButton.addEventListener("click", playVideo);
pauseButton.addEventListener("click", pauseVideo);
stopButton.addEventListener("click", stopVideo);
volumeSlider.addEventListener("change", changeVolume);

gsap.to("#box3", 2, 
		{scrollTrigger: {
			trigger: "#box3",
			toggleActions:"restart pause reverse none",
      markers: true,
      //start: "top center"
      start: "tob bottom",
      end: "center middle"
		}, 
		x:200, ease:Bounce.easeOut
		});

})();


function toggleMenu() {
  const menu = document.querySelector(".menu-links");
  const icon = document.querySelector(".hamburger-icon");
  menu.classList.toggle("open");
  icon.classList.toggle("open");
}

function clickimg(smallImg) {
  var fullImg = document.getElementById("imagebox");
  fullImg.src = smallImg.src
}

hamburgerIcon.addEventListener("click", toggleMenu);