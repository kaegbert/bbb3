class Poop { 
  float x;
  float y;
  float xspeed;
  float yspeed;

  Poop() {

    x = random(width);
    y = random(height);
    xspeed = 10;
    yspeed = 3;
  } 

  void display() {  
    image(bs, x, y, 55, 55);
  }

  void move() { 
    x = x + xspeed;
    y = y + yspeed;

    if ((x > width) || (x < 0)) {
      xspeed = xspeed * -1;
    }

    if ((y > height) || (y < 0)) {
      yspeed = yspeed * -1;
    }
  }
}

void collide(){
 
  
}