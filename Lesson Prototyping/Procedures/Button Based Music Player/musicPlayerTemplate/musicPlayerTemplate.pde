import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
int appWidth, appHeight, shorterSide;
//
void setup() {
  //Display
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  shorterSide = ( displayWidth < displayHeight) ? displayWidth : displayHeight ;
  //
  musicPlayerSetup();
  //
  //Population
  //
  //DIVs
  //rect(X, Y, Width, Height);
  //
}//End setup
//
void draw() {
  background( dayMode );
  rect(musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight);
  if ( musicButton==true ) {
    //MUSIC Player Code
    musicPlayerDraw();
  } else {
    println("Music is Off");
    //Program Specific Code
    rect( musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight ); //Overlapping DIV
  }//End MUSIC Button
  //
}//End draw
//
void mousePressed() {
  musicPlayerMousePressed();
} //End mousePressed
//
void keyPressed() {
  musicPlayerKeyPressed();
}//End keyPressed
//
//End MAIN Program
