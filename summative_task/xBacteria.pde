// The y bacteria must get to the x bacteria or else it will die that is the way symbiotic organisms work.
// This bateria appears in random areas and move with random velocities.

class xBacteria {

  RVector location;
  RVector velocity;
  float decider;
  float radius;
  float size = 20;

  xBacteria() {
    location = new RVector( 10+random(600), 10+random(300)  ); // making it's location random.
    velocity = new RVector(1, 1); // starts at a speed of 1, increases every round.
    radius = size/2;
  }

  // give the bacteria random motion
  void update() {
    //make movement random

    decider = random(100);
    if (decider<25) {
      velocity.x *=-1;
      velocity.y =1;
    } else if (decider<50 && decider>25) {
      velocity.y *=-1;
      velocity.x = 1;
    } else if (decider<75 && decider>50) {
      velocity.y = 1;
      velocity.x = 1;
    } else if (decider<100 && decider>75) {
      velocity.y = -1;
      velocity.x = -1;
    }

    location.x += velocity.x;
    location.y += velocity.y;
  }

  void display() {
    stroke(255);
    fill(200, 103, 40);
    ellipse(location.x, location.y, size, size);
  }

  void checkEdges() {
    // make it so you can't go off the map.

    if (location.x<0) {
      location.x = 640;
    } else if (location.x>640) {
      location.x = 0;
    } else if (location.y>360) {
      location.y = 0;
    } else if (location.y<0) {
      location.y = 360;
    }
  }

  void caught(LifeBar z) {
    location = new RVector( 10+random(600), 10+random(300)  ); // making it's location random.
    z.dimensionx += 150;
  }
}