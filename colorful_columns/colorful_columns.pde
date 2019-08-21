void setup(){
 size(400,400);
}

void draw(){
 noStroke();
 fill(mouseX/2,mouseY/2,255);
 for(int i = mouseY; i < 400; i++){
   ellipse(mouseX,i,10,10);
 }
}
