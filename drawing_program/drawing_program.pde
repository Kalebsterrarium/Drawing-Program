//Global variables

void setup() {

  fullScreen();
   float canvasX , canvasY , canvasWidth , canvasHeight ;
  canvasX =displayWidth*1/4;
  canvasY =displayHeight*0;
  canvasWidth =displayWidth*1/2;
  canvasHeight =displayHeight*3/4;
}//End setup()

void draw() {
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
}//End  draw()

void mousePressed() {
  
}//End mousePressed()

void keyPressed() {
}//End keyPressed
