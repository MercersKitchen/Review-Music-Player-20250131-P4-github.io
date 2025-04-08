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
//
int stopButtonTimer=0, stopTimer=5, stopTimeStamp=0;
//
void setup() {
  //Display
  size(700, 500); 
  //fullScreen();
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  //
  musicMenuX = appWidth*1/4;
  musicMenuY = appHeight*1/4;
  musicMenuWidth = appWidth*1/2;
  musicMenuHeight = appHeight*1/2;
  //
  //rect(X, Y, Width, Height);
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
  String musicPathway = "Music Pong/";
  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download
  String pongWorld = "Pong World";
  //Add all files, CS20 Review is special OS Java Library
  //Including the reading of the number of files in the array
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = "../../../../../" + musicPathway;
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
  //Empty Draw, similar to .noloop()
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
  if ( key=='P' || key=='p' ) {
    if ( playList[currentSong].isPlaying() ) {
      println("I am paused");
      playList[currentSong].pause();
      stopButtonTimer = second(); //Returns 0-59
      stopTimeStamp = stopButtonTimer + stopTimer; //Adds the 5 second delay
      //Adjusts for 5s delay above 55s, i.e. 56+5=60 when 60 is not possible
      //Similar to ArrayOutOfBoundsError
      if ( stopButtonTimer>54 ) {
        stopTimeStamp = stopTimeStamp - 60;
      }
    } else {
      if ( (stopTimeStamp!=0) && (second() <= stopTimeStamp) ) {
        playList[currentSong].rewind();
        //Reset PAUSE Button
        stopTimeStamp=0; //ERROR: inifinite loop of stopTimeStamp not being set, thus always stopped
        println("I am stopped");
      } else {
        //When the song finishes (within 90%), you must rewind it or it will not play
        if ( playList[currentSong].position() > playList[currentSong].length()*0.9 ) {
          playList[currentSong].rewind();
          playList[currentSong].play();
        } else {
          playList[currentSong].play();
        }
        println("I am playing");
      }
    }
  }
} //End keyPressed
//
// End Main Program
