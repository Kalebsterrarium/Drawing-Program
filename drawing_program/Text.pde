//Global Variable
PFont quitButtonFont;
color green=#18B704, white=#FFFFFF;
void textQuitButton() {




}//End textQuitButton

void text() {}//End text()

/* Text text to copy here

*/

void textSetup() {
quitButtonFont = createFont("Calibri",55);


rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);


}//End textSetup()

void textCode(String string, int size, float rectX, float rectY, float rectWidth, float rectHeight) {
  fill(green);
textAlign(CENTER,CENTER);
textFont(quitButtonFont, size);
  text(string, rectX , rectY, rectWidth, rectHeight);
  fill(white);
  
  
  
  
}//End textCode
