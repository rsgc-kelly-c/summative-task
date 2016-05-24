class yBacteria {

  RVector velocity;
  RVector location;
  float x = 2;
  // constructor
  yBacteria(){
    location = new RVector(15,15);
    velocity = new RVector(0.01,0.01);
    
  }
  
   void update() {

     
     
     
     
     
    //// Determine the direction vector that points to the mouse from our current location
    //RVector mouse = new RVector(mouseX, mouseY);
    //// get the Direction vector of the mouse to the bacteria
    //RVector direction = RVector.sub(mouse, location);
    
    //location.add(direction);
    ////move
    ////location.mult(x);
    ////// have the ball gradually moving towards the mouse
    //ellipse(location.x, location.y, 16, 16);
  }

  // show the object
  void display() {

    stroke(0);    // black border
    fill(200);    // light gray fill

    // draw the mover
    ellipse(location.x, location.y, 16, 16);
    update();
  }

  // wrap around edges
  void checkEdges() {
    
  }

//move right when you press the right arrow key
 void RightKey(){
   location.x += x;
 }
 // move left when you hit the left arrow key
 void LeftKey(){
   location.x -= x;
 }
 // move up when you hit the up arrow key
 void UpKey(){
   location.y -= x;
 }
 // move down when you hit the down arrow key
 void DownKey(){
   location.y += x;
 }
 
}
  