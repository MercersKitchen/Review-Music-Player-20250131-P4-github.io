import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 1;
//int numberOfSoundEffects = ???
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
//AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
float imageX, imageY, imageWidth, imageHeight;
float loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight;
float stopX, stopY, stopWidth, stopHeight;
float soundEffectsX, soundEffectsY, soundEffectsWidth, soundEffectsHeight;
//
void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  musicMenuX = appWidth*1/4;
  musicMenuY = appHeight*1/4;
  musicMenuWidth = appWidth*1/2;
  musicMenuHeight = appHeight*1/2;
  /*
  imageX = ;
   imageY = ;
   imageWidth = ;
   imageHeight = ;
   loopInfiniteX = ;
   loopInfiniteY = ;
   loopInfiniteWidth = ;
   loopInfiniteHeight = ;
   stopX = ;
   stopY = ;
   stopWidth = ;
   stopHeight = ;
   soundEffectsX = ;
   soundEffectsY = ;
   soundEffectsWidth = ;
   soundEffectsHeight = ;
   */
  //
  //DIVs: rect(X, Y, Width, Height);
  rect(musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight);
  //rect(imageX, imageY, imageWidth, imageHeight);
  //rect(loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight);
  //rect(stopX, stopY, stopWidth, stopHeight);
  //rect(soundEffectsX, soundEffectsY, soundEffectsWidth, soundEffectsHeight);
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  //String[] fileName = new String[ numberOfSongs ];
  //Alternate Reading of Array
  String musicPathway = "Music/";
  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download
  String pongWorld = "Pong World";
  //Add all files, CS20 Review is special OS Java Library
  //Including the reading of the number of files in the array
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = "../../../../" + musicPathway;
  String file = musicDirectory + pongWorld + fileExtension_mp3; //relative pathway or directory
  println( file );
  //Create a FOR loop to loadFile() a changing songName
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //Music Testing
  //playList[currentSong].play();
  //
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ;
   */
  //Feature: Play song @ startup, loop infinitely
  if ( key=='P' || key=='p' ) playList[currentSong].loop(); //Simple Play, double tap possible
  //
  //Simple Stop, no double taps
  if ( key=='S' | key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
    } else {
      playList[currentSong].rewind();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
} //End keyPressed
//
// End Main Program
