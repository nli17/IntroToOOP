class Ball {
 //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

//this is a constructor. you can have more than one constructor for a given class. no datatype (void, etc) doesn't return anything
  Ball(float tSpeed) {
    diam = 200;
    speed = tSpeed;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    c = color(random(255), random(50), random(100, 255));
  }

//after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void move(){
    
    loc.add(vel);
  }
  void bounce(){
    if(loc.x + diam/2>=width){
      vel.x=-abs(vel.x);
    }else if (loc.x - diam/2 <=0){
      vel.x = abs(vel.x);
    }
    if(loc.y + diam/2 >= height){
      vel.y = -abs(vel.y);
    }else if (loc.y - diam/2 <=0){
      vel.y=abs(vel.y);
    }
  }
}