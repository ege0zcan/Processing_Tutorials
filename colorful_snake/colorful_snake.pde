int x = 100;
int y = 100;
int i = 1;
//pembeli yılan programı
void setup(){
  size(500,500); 
}
 
void draw(){
  noStroke();
  fill(mouseX/2,mouseY/2,255);
  ellipse(mouseX,mouseY,100,100);
 }

void keyPressed(){
  fill(123,1,202);
}
