//Global variables
float canvasX, canvasY, canvasWidth, canvasHeight, drawingdiameter ;
  Boolean draw=false;
  int one, ten;
  float counting;

void setup() {

  fullScreen();
  one=1;
  
 
  
  ten=10;
  population();
}//End setup()

void draw() {
  println(counting);
  ten=ten+one;
  counting=ten+one;
  
  rect(canvasX*(counting/100), canvasY*(counting/25), canvasWidth, canvasHeight);
  if (draw == true && mouseX>canvasX && mouseX<canvasX+canvasWidth && mouseY>canvasY && mouseY<canvasY+canvasHeight) 
  {
    line(mouseX, mouseY, pmouseX, pmouseY);
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
