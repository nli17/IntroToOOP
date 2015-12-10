Ball b;                //declare a new ball called b
Ball c;
Ball d;

void setup() {
  size(800, 600);
  b = new Ball();      //initialize b as a new object of the Ball class
  c = new Ball();
  d = new Ball();
}

void draw() {
  background(0);
  b.display(); //call b's display() method
  b.move();
  b.bounce();
  c.display();
  c.move();
  c.bounce();
  d.display();
  d.move();
  d.bounce();
}