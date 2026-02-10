var MAX_TIME = 1800
var FIVE_SEC = 300

var time = 0
var countdownNum = 5
var AC = 0
var GC = 0
var end = 0 //cut off time


//🟢setup Function - will run once
setup = function() {
    size(1000, 600);
    background(255,255,255,0);

    

};


//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

if (end < MAX_TIME){
  fill(mouseX,mouseY,0);
  textSize(20);
  text("🐜", mouseX, mouseY);

  AC += 1
}


} //-------------- mouse clicked ---------------------------------



//🟢draw Function - will run on repeat
draw = function(){
    textSize(40);
    fill(0,0,0);


  //top header stuff idk-----------
    fill(255,255,255);
    stroke(255,255,255);
    rect(-495,0,3000,90);
    fill(0,0,0);
    text(countdownNum, 500,50);

  time += 1
  if(time > FIVE_SEC){
    drawGerm();
  }
  if(time > MAX_TIME){
    remove();
  }


  //🐜ant counter
  fill(255,255,255);
  stroke(255,255,255);
  rect(-495,530,3000,90);
  fill(0,0,0);
  textSize(40);
  text("Ant Count:" + AC,230,580);
  text("Germ Count:" + GC, 500,580);


//⌚countdown
  if (frameCount % 60 == 0 && countdownNum > 0) { 
    countdownNum --;
  }
  if (countdownNum == 0) {
    textSize(15);
    text("THE GERMS ARE HERE", 420, 70);
  }


//🐜QUEEN ANT 
end += 1
  if (end >= MAX_TIME){
    fill(0,0,0,75);
    rect(-20,-20,10000,10000)

    fill(0,0,0);
    drawQueen();
    
    if (AC > GC){
    fill(255,255,255);
    textSize(25);
    text("Hurrah! Now pip pip, we must away back to the colony!", 200,240);  
    }
    if (GC > AC){
    fill(255,255,255);
    textSize(25);
    text("You failed me. Leave this colony NOW.", 200,240);  
    }

   
  

  }
     

}; // ------------- draw end bracket ------------------



//🦠germs
var drawGerm = function(){
  textSize(15);
  let randNum = random(10);
  if (Math.floor(randNum) === 0){
    text("🦠", random(0,1000), random(100,536));  
    GC += 1
  }
  
}



//🐜queen ant but the drawn version
var drawQueen = function(){
  textSize(230);
  text("🐜",350,475);
  textSize(120);
  text("👑",360,330);
}


//-------------------------------------------------------

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};