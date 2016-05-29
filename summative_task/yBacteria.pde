class yBacteria {

  RVector velocity;
  RVector location;
  boolean RightKey;
  boolean LeftKey;
  boolean UpKey;
  boolean DownKey;
  // constructor
  yBacteria(){
    location = new RVector(15,15);
    velocity = new RVector(2,2);
    // declare booleans.
    RightKey = false;
    LeftKey = false;
    UpKey = false;
    DownKey = false;
    
  }
  
   void update() {

     
     // creat if statement to make it so if a key is pressed the bacteria contasntly moves in
     // that direction.
     
     if(RightKey == true){
       location.x += velocity.x;
       location.y = location.y;}
     else if(LeftKey == true){
       location.x -= velocity.x;
       location.y = location.y;}
     else if(UpKey == true){
       location.y -= velocity.y;
       location.x = location.x;}
     else if(DownKey == true){
       location.y += velocity.y;
       location.x = location.x;}
     
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
         // make it so you can't go off the map.
     if(location.x<0){
       location.x = 640;}
     else if (location.x>640){
       location.x = 0;}
     else if (location.y>360){
       location.y = 0;}
     else if (location.y<0){
       location.y = 360;}
    
  }
}
  