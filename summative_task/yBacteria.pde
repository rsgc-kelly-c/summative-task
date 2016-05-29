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
    
  }

////move right when you press the right arrow key
// void RightKey(){
//   location.x += velocity.x;
// }
// // move left when you hit the left arrow key
// void LeftKey(){
//   location.x -= velocity.x;
// }
// // move up when you hit the up arrow key
// void UpKey(){
//   location.y -= velocity.y;
// }
// // move down when you hit the down arrow key
// void DownKey(){
//   location.y += velocity.y;
// }
 
}
  