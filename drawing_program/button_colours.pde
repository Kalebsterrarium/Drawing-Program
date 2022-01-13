float redX, redY,redWidth, redHeight;
float orangeX, orangeY,orangeWidth, orangeHeight;
float yellowX, yellowY,yellowWidth, yellowHeight;
float greenX, greenY,greenWidth, greenHeight;
float blueX, blueY, blueWidth, blueHeight;
color Red=#FF0000,Yellow=#FFFF00,Orange=#FFA500,Green=#00FF00,Blue=#0000FF,Indigo,Violet;




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
}
