import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global variables
float canvasX, canvasY, canvasWidth, canvasHeight, drawingdiameter ;
Boolean draw=false, move=true;
int one, ten, Thick;
float counting;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float backgroundX2, backgroundY2, backgroundWidth2, backgroundHeight2;
float backgroundX3, backgroundY3, backgroundWidth3, backgroundHeight3;
float backgroundX4, backgroundY4, backgroundWidth4, backgroundHeight4;
float Width;
color Linecolour;
Boolean triangledraw=false, linedraw=false, rectdraw=false, circledraw=false;
void setup() {
musicsetup();
Linecolour=#000000;
  fullScreen();
  one=1;
  ten=10;
  Thick=1;
  Width= displayWidth*1/10;
  
  //
  population();
  quitButtonSetup();
  textSetup();

  //

noStroke();
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
  stroke(1);
  fill(white);
}//End setup()

void draw() {
  
RandomColour = color(random(255),random(255),random(255));
 
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
    stroke(Linecolour);
    strokeWeight(Thick);
    if(triangledraw == true) {
      stroke(Linecolour);
      fill(Linecolour);
    triangle(mouseX,mouseY-15,mouseX-10, mouseY+10, mouseX+10, mouseY+10);
    }
    if(rectdraw == true){
       stroke(Linecolour);
       fill(Linecolour);
    rect(mouseX -15, mouseY -15,30,30);
    }
    if (circledraw == true) { 
      stroke(Linecolour);
      fill(Linecolour);
    ellipse(mouseX,mouseY, 30, 30);
  }
    if(linedraw == true){
    line(mouseX, mouseY, pmouseX, pmouseY);
    
    }
    strokeWeight(1);
  }//End line draw
  fill(white);
BackGround();
Colourbuttons();
Thickness();
  quitButtonDraw();
  musicdraw();
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
  if (mouseX>redX && mouseX<redX+redWidth && mouseY>redY && mouseY<redY+redHeight) 
 {Linecolour=Red; textcolour=Black;}
 if (mouseX>orangeX && mouseX<orangeX+orangeWidth && mouseY>orangeY && mouseY<orangeY+orangeHeight) 
 {Linecolour=Orange; textcolour=Black;}
 if (mouseX>yellowX && mouseX<yellowX+yellowWidth && mouseY>yellowY && mouseY<yellowY+yellowHeight) 
 {Linecolour=Yellow; textcolour=Black;}
 if (mouseX>greenX && mouseX<greenX+greenWidth && mouseY>greenY && mouseY<greenY+greenHeight) 
 {Linecolour=Green; textcolour=Black;}
 if (mouseX>blueX && mouseX<blueX+blueWidth && mouseY>blueY && mouseY<blueY+blueHeight) 
 {Linecolour=Blue; textcolour=Black;}
 if (mouseX>indigoX && mouseX<indigoX+indigoWidth && mouseY>indigoY && mouseY<indigoY+indigoHeight) 
 {Linecolour=Indigo; textcolour=Black;}
 if (mouseX>violetX && mouseX<violetX+violetWidth && mouseY>violetY && mouseY<violetY+violetHeight) 
 {Linecolour=Violet; textcolour=Black;}
 if (mouseX>blackX && mouseX<blackX+blackWidth && mouseY>blackY && mouseY<blackY+blackHeight) 
 {Linecolour=Black; textcolour=white;}
 if (mouseX>brownX && mouseX<brownX+brownWidth && mouseY>brownY && mouseY<brownY+brownHeight) 
 {Linecolour=Brown; textcolour=white;}
 if (mouseX>grayX && mouseX<grayX+grayWidth && mouseY>grayY && mouseY<grayY+grayHeight) 
 {Linecolour=Gray; textcolour=Black;}
 if (mouseX>thinX && mouseX<thinX+thinWidth && mouseY>thinY && mouseY<thinY+thinHeight) 
 {Thick+=1;}
 if (mouseX>thin2X && mouseX<thin2X+thin2Width && mouseY>thin2Y && mouseY<thin2Y+thin2Height) 
 {Thick-=1;}
 if (Thick==0) {Thick+=1;}
 if (Thick>50) {Thick-=1;}
 if (mouseX>eraseX && mouseX<eraseX+eraseWidth && mouseY>eraseY && mouseY<eraseY+eraseHeight) 
 {Linecolour=white; textcolour=Black;}
  if (mouseX>triangleX && mouseX<triangleX+triangleWidth && mouseY>triangleY && mouseY<triangleY+triangleHeight) 
 {triangledraw=true; rectdraw=false; linedraw=false;circledraw=false;}
 if (mouseX>RectX && mouseX<RectX+RectWidth && mouseY>RectY && mouseY<RectY+RectHeight) 
 {rectdraw=true; triangledraw=false; linedraw=false;circledraw=false;}
 if (mouseX>LineboxX && mouseX<LineboxX+LineboxWidth && mouseY>LineboxY && mouseY<LineboxY+LineboxHeight) 
 {linedraw = true; rectdraw=false; triangledraw=false;circledraw=false;}
  if (mouseX>circleX && mouseX<circleX+circleWidth && mouseY>circleY && mouseY<circleY+circleHeight) 
 {circledraw=true;linedraw = false; rectdraw=false; triangledraw=false;}
 if (mouseX>stopX && mouseX<stopX+stopWidth && mouseY>stopY && mouseY<stopY+stopHeight) 
 { song[currentsong].pause();
 }
 if (mouseX>playX && mouseX<playX+playWidth && mouseY>playY && mouseY<playY+playHeight) 
 {song[currentsong].play();
 }
 if (mouseX>nextX && mouseX<nextX+nextWidth && mouseY>nextY && mouseY<nextY+nextHeight) 
 {if (song[currentsong].isPlaying()) {
      song[currentsong].pause();
      song[currentsong].rewind();
      //
      if ( currentsong == numberofsongs -1 ) {
        currentsong=numberofsongs-numberofsongs;
      } else {
        currentsong ++;
      }
      //
      song[currentsong].play();
    } else {
      song[currentsong].rewind();
      if ( currentsong == numberofsongs -1 ) {
        currentsong=numberofsongs-numberofsongs;
      } else {
        currentsong ++;
      }
  }
 }
 if (mouseX>previousX && mouseX<previousX+previousWidth && mouseY>previousY && mouseY<previousY+previousHeight) 
 {if (song[currentsong].isPlaying()) {
      song[currentsong].pause();
      song[currentsong].rewind();
      //
      if (currentsong==numberofsongs-numberofsongs) {
        currentsong = numberofsongs -1;
      } else {
        currentsong -=1;
      }
      //
      song[currentsong].play();
    } else {
      song[currentsong].rewind();
      if (currentsong==numberofsongs-numberofsongs) {
        currentsong = numberofsongs -1;
      } else {
        currentsong -=1;
      }
  }
 }
 if (mouseX>skip1X && mouseX<skip1X+skip1Width && mouseY>skip1Y && mouseY<skip1Y+skip1Height) 
 {song[currentsong].skip(1000);
 }
 if (mouseX>skip2X && mouseX<skip2X+skip2Width && mouseY>skip2Y && mouseY<skip2Y+skip2Height) 
 {song[currentsong].skip(-1000);
 }
 if (mouseX>restartX && mouseX<restartX+restartWidth && mouseY>restartY && mouseY<restartY+restartHeight) 
 {song[currentsong].rewind();
 }
}//End mousePressed()

void keyPressed() {
}//End keyPressed
