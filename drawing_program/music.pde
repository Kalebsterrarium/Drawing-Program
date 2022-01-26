Minim minim; //creates object to access all functions 
int numberofsongs= 3;
AudioPlayer[] song= new AudioPlayer[numberofsongs]; //creates "play list" variable holding extensions WAV, AIFF, AU, SND and MP3
int currentsong = numberofsongs - numberofsongs;

PFont Phont, font2;
float stopX,stopY,stopWidth,stopHeight;
float playX,playY,playWidth, playHeight;
String stop="Pause Song", play="Play Song", next="Next Song", previous="Previous Song", skip1="Skip Forward 1s" ,skip2="Skip Backward 1s", restart="Restart Song";
float nextX,nextY,nextWidth, nextHeight;
float previousX,previousY,previousWidth,previousHeight;
float skip1X, skip1Y, skip1Width, skip1Height;
float skip2X, skip2Y, skip2Width, skip2Height;
float restartX,restartY,restartWidth, restartHeight;
void musicsetup() {

  minim = new Minim(this);
  song [currentsong] = minim.loadFile("Music/Dinosaur, use screech.mp3");
  song[currentsong+1] = minim.loadFile("Music/Y2Mate.is - Good Ending Theme [Extended] - Five Nights at Freddys 3-IHRM5A6bXFQ-160k-1638669252949.mp3");
  song[currentsong+2] = minim.loadFile("Music/Y2Mate.is - WhatsApp CarDrip Car (HIGHEST QUALITY)-SBo6Z26w5T8-160k-1642536104601.mp3");
   playX=nextX=skip1X= displayWidth*9/10;
   stopY=displayHeight*0;
   stopWidth=playWidth=skip1Width=nextWidth=previousWidth=skip2Width=restartWidth=displayWidth*1/10;
   stopHeight=playHeight=nextHeight=previousHeight=skip1Height=skip2Height=restartHeight=displayHeight*1/10;
   stopX=previousX=skip2X= displayWidth*8/10;
  nextY=previousY= displayHeight*1/10;
 skip1Y=skip2Y= displayHeight*2/10;
 restartY=displayHeight*3/10;
 restartX=displayWidth*17/20;
 playY=displayHeight*0;
}
void musicdraw() {
  Phont= createFont ("Calibri",18);
  font2= createFont ("Calibri",18);
 textFont(Phont,40);
  fill(white);
  rect(stopX,stopY,stopWidth,stopHeight);
  fill(Black);
  text(stop,stopX,stopY,stopWidth,stopHeight );
   fill(white);
  rect(playX,playY,playWidth, playHeight);
  fill(Black);
  text(play,playX,playY,playWidth, playHeight);
  fill(white);
  rect(nextX,nextY,nextWidth, nextHeight);
  fill(Black);
  text(next,nextX,nextY,nextWidth, nextHeight);
  fill(white);
  rect(previousX,previousY,previousWidth, previousHeight);
  fill(Black);
  text(previous,previousX,previousY,previousWidth, previousHeight);
  fill(white);
  rect(skip1X,skip1Y,skip1Width, skip1Height);
  fill(Black);
  text(skip1,skip1X,skip1Y,skip1Width, skip1Height);
  fill(white);
  rect(skip2X,skip2Y,skip2Width, skip2Height);
  fill(Black);
  textFont(font2,37);
  text(skip2,skip2X,skip2Y,skip2Width, skip2Height);
   textFont(Phont,40);
  fill(white);
  rect(restartX,restartY,restartWidth, restartHeight);
  fill(Black);
  text(restart,restartX,restartY,restartWidth, restartHeight);
   
   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
