//Global variables
float canvasX, canvasY, canvasWidth, canvasHeight, drawingdiameter ;
Boolean draw=false, move=true;
int one, ten;
float counting;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float backgroundX2, backgroundY2, backgroundWidth2, backgroundHeight2;
float backgroundX3, backgroundY3, backgroundWidth3, backgroundHeight3;
float backgroundX4, backgroundY4, backgroundWidth4, backgroundHeight4;

void setup() {


  fullScreen();
  one=1;
  ten=10;
  //
  population();
  quitButtonSetup();
  textSetup();

  //


  rect(canvasX, canvasY, canvasWidth, canvasHeight);
  fill(white);
}//End setup()

void draw() {

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
     BackGround();
  }//End line draw

  quitButtonDraw();
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
