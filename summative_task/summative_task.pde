yBacteria user = new yBacteria();
LifeBar life = new LifeBar();
xBacteria follower = new xBacteria();
Title title = new Title();
Boolean titleScreen = true;

void setup() {

  // Create a white background
  size(640, 360);
}

// Runs forever
void draw() {

  if (titleScreen == true) {
    title.display();
  } else {
    // Clear the background
    background(222, 215, 120);

    follower.display();
    user.display();
    user.update();
    life.display();
    life.update();
  }
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
      println("going down");
    }
  }
  
}

void mousePressed(){
    titleScreen = false;


}