float thinX,thinY,thinWidth,thinHeight;
float thin2X,thin2Y,thin2Width,thin2Height;
String thick1="Increase Thickness" , thick2="Decrease Thickness", triangle="Triangle", rectangle="Rectangle";
float triangleX,triangleY,triangleWidth, triangleHeight;
float RectX, RectY, RectWidth, RectHeight;


void Thickness() {
thinX = thin2X=displayWidth*1/10;
thinY=displayHeight*1/10;
thinWidth = thin2Width = displayWidth*1/10;
thinHeight= thin2Height = displayHeight*1/10;
thin2Y=displayHeight*2/10;
triangleX = displayWidth*1/10;
triangleY=displayHeight*4/10;
triangleWidth = displayWidth*1/10;
triangleHeight = displayHeight*1/10;
RectX = displayWidth*1/10;
RectY=displayHeight*5/10;
RectWidth = displayWidth*1/10;
RectHeight = displayHeight*1/10;

Font = createFont ("Calibri",10);
textFont(Font,35);

fill(white);
rect(thinX,thinY,thinWidth,thinHeight);
fill(Black);
text(thick1,thinX,thinY,thinWidth,thinHeight);
fill(white);
rect(thin2X,thin2Y,thin2Width,thin2Height);
fill(Black);
text(thick2,thin2X,thin2Y,thin2Width,thin2Height);
fill(white);
rect(triangleX,triangleY,triangleWidth, triangleHeight);
fill(Black);
text(triangle,triangleX,triangleY,triangleWidth, triangleHeight);
fill(white);
rect(RectX,RectY,RectWidth,RectHeight);
fill(Black);
text(rectangle,RectX,RectY,RectWidth, RectHeight);
}
