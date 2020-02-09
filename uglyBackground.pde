//variable
color colorLeft = color(87, 56, 210);
color colorRight = color(155, 40, 10);
float x, y;
float xInc = 4;
float yInc = 6;
boolean goingRight = true;
boolean goingUp = true;
int circleColor = 0;

void setup(){
  size(800, 800);
  x = 5;
  y = 90;
}

void draw(){
  //background color change
//  if (mouseX < width/2) {
//   background(colorLeft);
//  }
  
//  else {
//    background(colorRight);
//  }
  
  // --------------------------------------------->
  //moving box
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  circleColor = (circleColor+1)%360;
  fill(circleColor,100,100);
  rect(x, y, 40, 40);
  
  if (x < width && goingRight == true){
    x += xInc;
  }
  
  else {
    goingRight = false;
    x-=xInc;
    
    if (x < 0) {
      goingRight = true;
    }
  }
    
     if (y < height && goingUp == true){
    y += yInc;
  }
  
  else {
    goingUp = false;
    y-=yInc;
    
    if (y < 0) {
      goingUp = true;
    }
  }
  
}
