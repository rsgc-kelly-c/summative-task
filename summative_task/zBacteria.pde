// This bacteria chases the y bacteria and if it touches the yBacteria loses health

class zBacteria {

  RVector location;
  float radius;
  float size = 20;
  
  zBacteria(){
  location = new RVector( 10+random(600) , 10+random(300)  ); // making it's location random.
  radius = size/2;
  
  }
  
  // give the bacteria random motion
  void update(yBacteria y){
    //this bacteria follows you
    RVector direction = new RVector(y.location.x-location.x, y.location.y-location.y);
    direction.normalize();
    
    location.x += direction.x;
    location.y += direction.y;
  }
  
  void display(){
  
    stroke(0,0,0);
    fill(200,0,0);
    
    ellipse(location.x, location.y, size, size);
  
  
  }
  
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