// The y bacteria must get to the x bacteria or else it will die that is the way symbiotic organisms work.
// This bateria appears in random areas and move with random velocities.

class xBacteria {

  RVector location;
  RVector velocity;
  
  xBacteria(){
  location = new RVector( 10+random(600) , 10+random(300)  ); // making it's location random.
  velocity = new RVector(1,1); // starts at a speed of 1, increases every round.
  
  }
  
  void display(){
  
    stroke(255);
    fill(200,103,40);
    
    ellipse(location.x, location.y, 20, 20);
  
  
  }









}