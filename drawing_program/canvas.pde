PImage pic1 , pic2;
float image1selectorX,image1selectorY,image1selectorWidth,image1selectorHeight;
float image2selectorX,image2selectorY,image2selectorWidth,image2selectorHeight;
float image1X,image1Y,image1Width,image1Height;
float image2X,image2Y,image2Width,image2Height;
float buttonX, buttonY, buttonWidth, buttonHeight;
String blank="White Canvas";

void canvas() {
  pic1= loadImage("an871k4o1sn51.png");
  pic2= loadImage("istockphoto-1267248832-1024x1024.jpg");
  image1selectorX = displayWidth*1/2;
  image1selectorY = displayHeight*9/10;
  image1selectorWidth = displayWidth*1/10;
  image1selectorHeight = displayHeight*1/10;
  image2selectorX = displayWidth*6/10;
  image2selectorY = displayHeight*9/10;
  image2selectorWidth = displayWidth*1/10;
  image2selectorHeight = displayHeight*1/10;
  image1X = displayWidth*1/4;
  image1Y = displayHeight*1/50;
  image1Width = displayWidth*1/2;
  image1Height = displayHeight*3/4;
  image2X = displayWidth*1/4;
 image2Y = displayHeight*1/50;
 image2Width = displayWidth*1/2;
  image2Height = displayHeight*3/4;
buttonX = displayWidth*2/5;
  buttonY = displayHeight*9/10;
  buttonWidth = displayWidth*1/10;
buttonHeight = displayHeight*1/10;

textFont(Font,25);
rect(image1selectorX,image1selectorY,image1selectorWidth,image1selectorHeight);
image(pic1,image1selectorX,image1selectorY,image1selectorWidth,image1selectorHeight);
rect(image2selectorX,image2selectorY,image2selectorWidth,image2selectorHeight);
image(pic2,image2selectorX,image2selectorY,image2selectorWidth,image2selectorHeight);
fill(white);
rect(buttonX,buttonY,buttonWidth,buttonHeight);
fill(Black);
text(blank,buttonX,buttonY,buttonWidth,buttonHeight);
}
