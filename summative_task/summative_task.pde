yBacteria user = new yBacteria();
LifeBar life = new LifeBar();
xBacteria follower = new xBacteria();
Title title = new Title();
Boolean titleScreen = true;
zBacteria chaser = new zBacteria();
zBacteria[] span;
int count = 0;

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
    user.collideEnemy(chaser, life);
    user.display();
    
    if(user.eCollide == true)
       count += 1;
       
       
    while(count!=0){
      if(span[count-1] == null)
    span[count-1] = new zBacteria();
    print(span[count]);
    span[count-1].display();
    span[count-1].update(user);
    span[count-1].checkEdges();
    count--;
    }
    
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