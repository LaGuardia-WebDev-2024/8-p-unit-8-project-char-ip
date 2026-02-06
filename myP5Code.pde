

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
textSize(20);
text("🦠", random(0,900), random(0,1000));
if(mousePressed){
  
}


};


//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};
