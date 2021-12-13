//Global variables
float canvasX, canvasY, canvasWidth, canvasHeight, drawingdiameter ;
  Boolean draw=false, move=true;
  int one, ten;
  float counting;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
   
void setup() {

   
  fullScreen();
  one=1;
  ten=10;
  //
  population();
  quitButtonSetup();
  textSetup();
  
  //
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
  fill(white);
   
}//End setup()

void draw() {
  quitButtonDraw();
  if (counting>100) 
{
  move = false;
}
  
  
  
  if (move == true)
  {
    println(counting);
  ten=ten+one;
  counting=ten+one;
  }

   
  if (draw == true && mouseX>canvasX && mouseX<canvasX+canvasWidth && mouseY>canvasY && mouseY<canvasY+canvasHeight) 
  {
    test();
    line(mouseX, mouseY, pmouseX, pmouseY);
  }//End line draw
}//End  draw()

void mousePressed() {
  quitButtonMousePressed();
  //
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
