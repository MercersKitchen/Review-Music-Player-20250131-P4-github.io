import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//
void setup() {
  //Display
  //fullScreen();
  //int appWidth = displayWidth;
  //int appHeight = displayHeight;
  //
  musicPlayerSetup();
  //Population
  //
  //DIVs
  //rect(X, Y, Width, Height);
  //
}//End setup
//
void draw() {
  if ( musicButton==true ) {
    //MUSIC Player Code
    musicPlayerDraw();
  } else {
    println("Music is Off");
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
