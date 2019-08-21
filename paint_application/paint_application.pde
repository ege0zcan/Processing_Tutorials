int r = 255;
int g = 100;
int b = 100;
int brushSize = 20;
int rectSize = 46; 
boolean fillSelected = false;

int [] purple={196,53,181}; 
int [] blue = {103,238,255};
int [] lightgreen = {223,243,191};
int [] palegreen = {159,243,223};
int [] yellow = {255,255,102};
int [] orange = {1255,198,76};
int [] silver = {213,204,193};
int [] red = {238,84,68};
int [] pink = {216,127,200};
int [] brown = {177,141,87};
int [] white = {240,240,240};

int[][] colors = { purple,blue,lightgreen,palegreen,yellow,orange,silver,red,pink,brown,white,white,white}; 

void setup(){
  size(600,600); 
  background(0);
}
 
void draw(){
  stroke(10);
  for (int i=0; i < 13 ; i++){
    fill(colors[i][0],colors[i][1],colors[i][2]); 
    rect(0, i*rectSize, rectSize, rectSize);
  }

  fill(147,205,225);
  noStroke();
  rect(8,(10*rectSize)+18,30,10);
  rect(18,(10*rectSize)+8,10,30);
  rect(8,(11*rectSize)+18,30,10);
  textSize(22);
  text("fill",10, (12*rectSize)+30 );
  fill(r,g,b); 
}

void keyPressed(){
  if (key == 'b' || key == 'B')
    brushSize = brushSize + 10;
}

void mouseClicked(){
  noStroke();
  fill(r,g,b);
  ellipse(mouseX,mouseY,brushSize,brushSize);
  checkColor();
}

void mouseDragged(){
  if(mouseX>rectSize+1){
    noStroke();
    fill(r,g,b);
    ellipse(mouseX,mouseY,brushSize,brushSize);
  }
}

void checkColor()  {
  if(mouseX<rectSize){
    if(mouseY < 10*rectSize){
      int colorindex = mouseY/rectSize;
      r = colors[colorindex][0];
      g = colors[colorindex][1];
      b = colors[colorindex][2];
    }
    else if(mouseY<11*rectSize){
      brushSize = brushSize + 10;
    }
    else if(mouseY<12*rectSize){
      if(brushSize > 10)
        brushSize = brushSize - 10;
    }
    else if(mouseY<13*rectSize){
      fillSelected = true; 
    }
  }
  else if (fillSelected){
    fillSelected = false;
    background (r,g,b);
  }
}
