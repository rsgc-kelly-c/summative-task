//This Bar decreases over time
//Once this bar hits 0, the game is over
class LifeBar {
  RVector location = new RVector (500, 20);
  int dimensionx = 100;
  int countdown;
  int factor = 2;

  LifeBar() {
    countdown = 60;
  }

  // As this simulation updates the life bar decreases

  void update() {

   
    if (dimensionx>0) {
      if (countdown>0){
        moving();
        countdown--;}
      else {
        dimensionx -= factor;
        countdown = 60;
      }
    } else {
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