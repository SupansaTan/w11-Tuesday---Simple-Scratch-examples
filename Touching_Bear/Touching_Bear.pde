// set global variable
int posX, posY; 
int health = 5;

void setup(){
}

void draw(){
}


void keyPressed(){
  if (key == CODED){
    if (keyCode == UP){
      // pressed key up arrow
      posY += 10;
    }
    else if (keyCode == DOWN){
      // pressed key down arrow
      posY -= 10;
    }
    else if (keyCode == LEFT){
      // pressed key left arrow
      posX += 10;
    }
    else if (keyCode == RIGHT){
      // pressed key right arrow
      posX -= 10;
    }
  }
}
