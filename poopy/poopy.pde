PImage congress; 
PImage bernie; 
PImage bernie1; 
PImage bernie2; 
PImage bs; 
PImage ppl; 
PImage donald; 
int stage = 0;
float x = 1;
//declare the array
Poop[] poops = new Poop[50]; 
float numpoops = 49;


void setup() { 

  fullScreen(); 

  //pictures
  donald = loadImage("donald.png:");
  bernie = loadImage("bernie.png"); 
  bernie1 = loadImage("bernie1.png"); 
  bernie2 = loadImage("bernie2.png"); 
  bs = loadImage("bs.png"); 
  ppl = loadImage("ppl.png"); 

  //array for loop!
  for (int i = 0; i < numpoops+1; i++) {
    poops[i] = new Poop();
  }
}

void draw() { 

  background(0); 
  println (mouseX +"," + mouseY);
  imageMode(CENTER); 
  image(bernie, mouseX, mouseY); 
  //array loop 
  
  image(ppl,width/2,height-975); 
  
  //mouseclick stuff
  if (mousePressed) {
    textSize(50); 
    text("This game is broken...",100,100);
    imageMode(CENTER); 
    image(bernie1, mouseX, mouseY); 
  }
  
  //spacebar stuff
  if (keyPressed) { 
    if (key == ' ') {
      textSize(50); 
      text("... just like our Democracy.",width-700,height-100); 
      imageMode(CENTER); 
      image(bernie2, mouseX, mouseY); 
    }
  }

  for (int i = 0; i < x; i++) {
    poops[i].display(); 
    poops[i].move();
  }
  x = x + 1;
  if (x >= numpoops) {
    x=numpoops;
  }
}