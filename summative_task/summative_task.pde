yBacteria user = new yBacteria();
LifeBar life = new LifeBar();
xBacteria follower = new xBacteria();
Title title = new Title();
Boolean titleScreen = true;
zBacteria chaser = new zBacteria();
zBacteria span[] = new zBacteria[20];
int count = 0;

void setup() {

  // Create a white background
  size(640, 360);
  for (int i=0; i<20; i++) {
    span[i] = new zBacteria();
    span[i].active = false;
  }
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

    if (user.eCollide == true) {
      count += 1;
      span[count-1].active = true;
    }


    for (int i=10; i>0; i--) {
      span[i-1].display();
      span[i-1].update(user);
      span[i-1].checkEdges();
      user.collideEnemy(span[i-1], life);
    }

    chaser.display();
    chaser.update(user);
    chaser.checkEdges();

    life.display();
    life.update();

    title.score(count);
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

void mousePressed() {
  titleScreen = false;
}