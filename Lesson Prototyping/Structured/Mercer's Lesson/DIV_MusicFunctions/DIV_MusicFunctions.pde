import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 8;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
int appWidth, appHeight;
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
//
void setup() {
  //Display
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  musicMenuX = displayWidth*1/4;
  musicMenuY = displayHeight*1/4;
  musicMenuWidth = displayWidth*1/2;
  musicMenuHeight = displayHeight*1/2;
  //
  //rect(X, Y Width, Height);
  rect(musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight);
  //
  //Music Loading - STRUCTURED Review
  String musicPathway = "Music/";
  String groove = "groove";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = "../../../../" + musicPathway;
  String file = musicDirectory + groove + fileExtension_mp3; //relative pathway or directory
  println( file );
  playList[ currentSong ] = minim.loadfile( file ); //ERROR: Verify Library installed, Sketch / Import Library
  //Music Testing
  
  //
} //End setup
//
void draw() {} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
// End Main Program
