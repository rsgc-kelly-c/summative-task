//This Bar decreases over time
//Once this bar hits 0, the game is over
class LifeBar {
  RVector location = new RVector (500, 20);
  int dimensionx = 100;
  int countdown;

  LifeBar() {
    countdown = 60;
  }
  
  // As this simulation updates the life bar decreases
  
  void update(){
    
    
    
    if(countdown>0)
      countdown--;
    else{
      dimensionx-= 2;
      countdown = 60;
    }
  }
  
  void display(){
    stroke(0);    // black border
    fill(3);    // light gray fill
    
    rect(location.x,location.y,dimensionx,14);
  
  }
  
  
  
}