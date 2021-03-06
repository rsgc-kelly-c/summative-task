// This bacteria chases the y bacteria and if it touches the yBacteria loses health

class zBacteria {

  RVector location;
  float radius;
  float size = 20;
  boolean active = true;

  zBacteria() {
    if (active == true) {
      location = new RVector( 10+random(600), 10+random(300)  ); // making it's location random.
      radius = size/2;
    }
  }

  // give the bacteria random motion
  void update(yBacteria y) {
    //this bacteria follows you
    if (active == true) {
      RVector direction = new RVector(y.location.x-location.x, y.location.y-location.y);
      direction.normalize();

      location.x += direction.x;
      location.y += direction.y;
    }
  }

  void display() {
    if (active == true) {
      stroke(0, 0, 0);
      fill(200, 0, 0);

      ellipse(location.x, location.y, size, size);
    }
  }

  void checkEdges() {
    // make it so you can't go off the map.
    if (active == true) {
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
  }





  void caught(LifeBar z) {
    if (active == true) {
      location = new RVector( 10+random(600), 10+random(300)  ); // making it's location random.
      z.dimensionx -= 20;
      zBacteria span = new zBacteria();
      span.location = new RVector( 10+random(600), 10+random(300)  );
    }
  }
}