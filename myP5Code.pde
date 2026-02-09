var FSR = 0
var time = 5

//🟢setup Function - will run once
setup = function() {
    size(1000, 600);
    background(255,255,255,0);

};


//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
fill(mouseX,mouseY,0);
textSize(20);
text("🐜", mouseX, mouseY);
}

//🟢draw Function - will run on repeat
draw = function(){
    textSize(40);
    fill(0,0,0);
    text(time, 800,300-time*40);


  if(FSR > 250){
    drawGerm();
  }
  FSR += 1



//⌚countdown
  if (frameCount % 60 == 0 && time > 0) { 
    time --;
  }
  if (time == 0) {
    text("THE GERMS ARE HERE", 420, 70);
     }

}; // ------------- draw end bracket ------------------



//🦠germs
var drawGerm = function(){
  textSize(15);
  text("🦠", random(0,2000), random(0,2000));
}



//------------------------------------------------------------

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};