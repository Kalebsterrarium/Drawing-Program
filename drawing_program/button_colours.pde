float redX, redY,redWidth, redHeight;
float orangeX, orangeY,orangeWidth, orangeHeight;
float yellowX, yellowY,yellowWidth, yellowHeight;
float greenX, greenY,greenWidth, greenHeight;
float blueX, blueY, blueWidth, blueHeight;
float indigoX,indigoY,indigoWidth,indigoHeight;
float violetX, violetY, violetWidth, violetHeight;
float blackX, blackY, blackWidth, blackHeight;
float brownX, brownY, brownWidth, brownHeight;
float grayX, grayY, grayWidth, grayHeight;
float showcolourX,showcolourY,showcolourWidth,showcolourHeight;
color Red=#FF0000,Yellow=#FFFF00,Orange=#FFA500,Green=#00FF00,Blue=#0000FF,Indigo=#4B0082,Violet=#8F00FF,Black=#000000,Brown=#964B00,Gray=#808080,textcolour=Black;
String colour="Selected Colour";
PFont Font;




void Colourbuttons() {
  redX=displayWidth*0;
  redY=displayHeight*0;
redWidth=displayWidth*1/10;
redHeight=displayHeight*1/10;
yellowX=displayWidth*0;
yellowY=displayHeight*2/10;
yellowWidth=displayWidth*1/10;
yellowHeight=displayHeight*1/10;
orangeX=displayWidth*0;
orangeY=displayHeight*1/10;
orangeWidth=displayWidth*1/10;
orangeHeight=displayHeight*1/10;
greenX=displayWidth*0;
greenY=displayHeight*3/10;
greenWidth=displayWidth*1/10;
greenHeight=displayHeight*1/10;
blueX=displayWidth*0;
blueY=displayHeight*4/10;
blueWidth=displayWidth*1/10;
blueHeight=displayHeight*1/10;
indigoX=displayWidth*0;
indigoY=displayHeight*5/10;
indigoWidth=displayWidth*1/10;
indigoHeight=displayHeight*1/10;
violetX=displayWidth*0;
violetY=displayHeight*6/10;
violetWidth=displayWidth*1/10;
violetHeight=displayHeight*1/10;
blackX=displayWidth*0;
blackY=displayHeight*7/10;
blackWidth=displayWidth*1/10;
blackHeight=displayHeight*1/10;
brownX=displayWidth*0;
brownY=displayHeight*8/10;
brownWidth=displayWidth*1/10;
brownHeight=displayHeight*1/10;
grayX=displayWidth*0;
grayY=displayHeight*9/10;
grayWidth=displayWidth*1/10;
grayHeight=displayHeight*1/10;
showcolourX=displayWidth*1/10;
  showcolourY=displayHeight*0;
showcolourWidth=displayWidth*1/10;
showcolourHeight=displayHeight*1/10;
fill(Red);
 rect(redX, redY,redWidth, redHeight);
 fill(white);
 fill(Yellow);
 rect(yellowX, yellowY,yellowWidth, yellowHeight);
 fill(white);
 fill(Orange);
 rect(orangeX, orangeY,orangeWidth, orangeHeight);
fill(Green);
 rect(greenX, greenY,greenWidth, greenHeight);
 fill(white);
 fill(Blue);
 rect(blueX, blueY,blueWidth, blueHeight);
 fill(white);
 fill(Indigo);
 rect(indigoX,indigoY,indigoWidth,indigoHeight);
 fill(white);
 fill(Violet);
 rect(violetX, violetY, violetWidth, violetHeight);
 fill(white);
 fill(Black);
 rect(blackX, blackY, blackWidth, blackHeight);
 fill(white);
 fill(Brown);
 rect(brownX, brownY, brownWidth, brownHeight);
 fill(white);
 fill(Gray);
 rect(grayX, grayY, grayWidth, grayHeight);
 fill(white);
 Font = createFont ("Calibri",10);
 textFont(Font,35);
 
 fill(Linecolour);
 rect(showcolourX,showcolourY,showcolourWidth,showcolourHeight);
 fill(textcolour);
 text(colour,showcolourX,showcolourY,showcolourWidth,showcolourHeight);
}