//This Bar decreases over time
//Once this bar hits 0, the game is over
class LifeBar {
  RVector location = new RVector (300, 20);
  int dimensionx = 300;

  float factor = 0.0;

  LifeBar() {

    factor = 1/10000.0;
    print(factor);
  }

  // As this simulation updates the life bar decreases

  void update() {
    text("LIFE", 400, 14);
    //if the size of the health bar is not 0 make it smaller
    if (dimensionx>0) {
      dimensionx -= factor;
    } else {
      // If the healthbar is 0 clear eveything and make the end title show.
      clear();
      background(51);
      textSize(30);
      stroke(0);
      text("GAME OVER", 210, 180);
      noLoop();
    }
  }


  void display() {
    stroke(0);    // black border
    fill(3);    // light gray fill

    rect(location.x, location.y, dimensionx, 14);
  }

  void moving() {
    if (key == CODED) {
      factor = 3;
    } else {
      factor =2;
    }
  }
}