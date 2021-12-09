//Gloabal variables

String quitButton = "Quit";
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, yellow=#E8D825, lightyellow=#E8DB4B;
int reset=1;


void quitButtonSetup() {
  quitButtonX = displayWidth*15/20;
  quitButtonY = displayHeight*38.5/50;
  quitButtonWidth = displayWidth*1/4;
  quitButtonHeight = displayHeight*6/25;

  
}//End quitButtonSetup

void quitButtonDraw() 
{
  //Quit Button Hover Over
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    quitButtonColour=lightyellow;
  } else {
    quitButtonColour=yellow;
    
  }//End Quit Button Hover Over
  
  fill(quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  textCode(quitButton, 75, quitButtonX, quitButtonY , quitButtonWidth, quitButtonHeight);
}//End quitButtonDraw

void quitButtonMousePressed() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}//End quitButtonMousePressed
