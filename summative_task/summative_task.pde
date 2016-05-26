yBacteria user = new yBacteria();
LifeBar life = new LifeBar();
xBacteria follower = new xBacteria();
void setup() {

  // Create a white background
  size(640, 360);
    if (mousePressed  == false){
  background(0);
  stroke(255);
  text("This game is all about paracitism, you must collect orange balls to survive",210, 180);
  noLoop();}
  else
    loop();
  

}

// Runs forever
void draw() {

  if (mousePressed  == false){
  background(0);
  stroke(255);
  text("This game is all about paracitism, you must collect orange balls to survive",210, 180);
  noLoop();}
  else{
    loop();}
  // Clear the background
  background(222,215,120);
  
  follower.display();
  user.display();
  user.update();
  life.display();
  life.update();

}

void keyPressed() {
  
  if (key == CODED) {

    if (keyCode == RIGHT) {
      user.RightKey();
      println("going right");
      
    } else if (keyCode == LEFT) {
      user.LeftKey();
      println("going left");

    
  } else if (keyCode == UP) {
    user.UpKey();
    println("going up");
  } else if (keyCode == DOWN) {
    user.DownKey();
    println("going down");}
    
    
}
  
  
  
}