int x = 30;
int y = 30;
int xdir = 2;
int ydir = 2;
int rectangleWidth = 100;
int rectangleHeight = 50;

void setup()
{
  size(600,600);
  background(0);
}

void draw()
{
  background(0);
  rect(x,y,rectangleWidth,rectangleHeight);
  //background(0);
  //textSize(42);
  text("DVD",x+30,y);
  //text("DVD", x, y, 100, 50);
  
  x = x + xdir;
  y = y + ydir;
  
  if(y>550){
    ydir= -2;
    fill(random(255),random(255),random(255));
  }
  if(y<0){
     ydir=2;
     fill(random(255),random(255),random(255));
  }
  if(x>500){
    xdir=-2;
    fill(random(255),random(255),random(255));
  }
  if(x<0){
     xdir=2;
     fill(random(255),random(255),random(255));
  }
}
