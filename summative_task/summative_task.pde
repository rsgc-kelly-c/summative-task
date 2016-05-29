yBacteria user = new yBacteria();
LifeBar life = new LifeBar();
xBacteria follower = new xBacteria();
Title title = new Title();
Boolean titleScreen = true;
zBacteria chaser = new zBacteria();

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
    follower.update();
    follower.display();
    follower.checkEdges();
    
    user.update();
    user.checkEdges();
    user.collide(follower, life);
    user.display();
    
    chaser.display();
    chaser.update(user);
    chaser.checkEdges();
    
    life.display();
    life.update();
  }
}

void keyPressed() {

  if (key == CODED) {

    if (keyCode == RIGHT) {
      user.RightKey = true;
      user.LeftKey = false;
      user.UpKey = false;
      user.DownKey = false; 

    } else if (keyCode == LEFT) {
      user.RightKey = false;
      user.LeftKey = true;
      user.UpKey = false;
      user.DownKey = false; 
    } else if (keyCode == UP) {
      user.RightKey = false;
      user.LeftKey = false;
      user.UpKey = true;
      user.DownKey = false; 
    } else if (keyCode == DOWN) {
      user.RightKey = false;
      user.LeftKey = false;
      user.UpKey = false;
      user.DownKey = true; 
    }
  }
  
}

void mousePressed(){
    titleScreen = false;


}