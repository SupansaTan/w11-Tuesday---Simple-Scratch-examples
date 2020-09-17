// set global variables
int posX, posY; 
int health;
color brown, blue, orange, black, gray;

void setup(){
  size(500,500); // set size window
  background(255); // set background : white
  
  //set color 
  brown = color(210,180,140);
  blue = color(0,0,128);
  orange = color(255,178,102);
  gray = color(244);
  black = color(0);
  
  posX = width/10; 
  posY = height/2;
  health = 5; // set start health 
}

void draw(){
  background(255);
  
  // display Health
  fill(gray);
  rect(20,20,100,25);
  fill(orange);
  rect(82,22,30,20);
  fill(black);
  textSize(16);
  text("Health   " + health,25,37);
  
  // draw bear and cat
  bear();
  cat();
}

void bear(){
  fill(brown);
  noStroke(); // no border
  rect(100,100,200,150);
}

void cat(){
  // when Cat still alive
  if (health > 0){
    // draw circle (instead of Cat)
    fill(blue);
    circle(posX, posY, 50);
  }
  
  // check Cat touching Bear
  if (100 <= posX && posX <= 200+100 && 100 <= posY && posY <= 150+100){
    health -= 1;
    delay(100);
  }
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
  else if (key == 'w'){
    // pressed key 'w' for move up
    posY -= 10;
  }
  else if (key == 's'){
    // pressed key 's' for move down
    posY += 10;
  }
  else if (key == 'a'){
    // pressed key 'a' for move left
    posX -= 10;
  }
  else if (key == 'd'){
    // pressed key 'd' for move right
    posX += 10;
  }
}
