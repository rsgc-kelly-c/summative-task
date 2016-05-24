yBacteria user = new yBacteria();
LifeBar life = new LifeBar();
void setup() {

  // Create a white background
  size(640, 360);
  background(255);

}

// Runs forever
void draw() {

  // Clear the background
  background(255);

  user.display();
  user.update();
  life.display();
  life.update();
}

void keyPressed() {
  
  if (key == CODED) {

    if (keyCode == RIGHT) {
      user.RightKey();
      println("going right");
      
    } else if (keyCode == LEFT) {
      user.LeftKey();
      println("going left");

    
  } else if (keyCode == UP) {
    user.UpKey();
    println("going up");
  } else if (keyCode == DOWN) {
    user.DownKey();
    println("going down");}
    
    
}
  
  
  
}