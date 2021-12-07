//Global variables
float canvasX, canvasY, canvasWidth, canvasHeight, drawingdiameter ;
  Boolean draw=false;
void setup() {

  fullScreen();
  
 
  population();
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
}//End setup()

void draw() {
  if (draw == true) 
  {
    ellipse(mouseX, mouseY, drawingdiameter, drawingdiameter);
  }//End line draw
}//End  draw()

void mousePressed() {
  if (mouseX>canvasX && mouseX<canvasX+canvasWidth && mouseY>canvasY && mouseY<canvasY+canvasHeight) 
  {

    if (draw == false) 
    {
      draw = true;
    } else 
    {
      draw = false;
      
    }//End draw boolean
  }//End line draw
}//End mousePressed()

void keyPressed() {
}//End keyPressed
