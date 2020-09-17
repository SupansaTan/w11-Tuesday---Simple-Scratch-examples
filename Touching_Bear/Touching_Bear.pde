// set global variables
int posX, posY; 
int health;
color brown, blue;

void setup(){
  size(500,500); // set size window
  background(255); // set background : white
  
  //set color 
  brown = color(210,180,140);
  blue = color(0,0,128);
  
  posX = width/10; 
  posY = height/2;
  health = 5; // set start health 
}

void draw(){
  background(255);
  noStroke(); // no border
  
  // draw rectangle (instead of Bear)
  fill(brown);
  rect(100,100,200,150);
  
  // draw circle (instead of Cat)
  fill(blue);
  circle(posX, posY, 50);
}

void keyPressed(){
  if (key == CODED){
    if (keyCode == UP){
      // pressed key 'up arrow'
      posY -= 10;
    }
    else if (keyCode == DOWN){
      // pressed key 'down arrow'
      posY += 10;
    }
    else if (keyCode == LEFT){
      // pressed key 'left arrow'
      posX -= 10;
    }
    else if (keyCode == RIGHT){
      // pressed key 'right arrow'
      posX += 10;
    }
  }
}
