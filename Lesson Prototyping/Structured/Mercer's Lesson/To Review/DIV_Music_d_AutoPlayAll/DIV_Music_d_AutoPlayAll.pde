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
//int numberOfSoundEffects = ???
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
//AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
//
int stopButtonTimer=0, stopTimer=5, stopTimeStamp=0;
Boolean deactivateAutoPlay=false, firstTime=true;
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
  String musicPathway = "Music All/";
  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download
  String beatYourCompetition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String eureka = "Eureka";
  String ghostWalk = "Ghost_Walk";
  String groove = "groove";
  String newsroom = "Newsroom";
  String startYourEngines = "Start_Your_Engines";
  String simplest = "The_Simplest";
  //Add all files, CS20 Review is special OS Java Library
  //Including the reading of the number of files in the array
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = "../../../../../" + musicPathway; //Relative Pathway ( not absolute, sketchPath() )
  String file = musicDirectory + beatYourCompetition + fileExtension_mp3; //relative pathway or directory
  println( file );
  //Create a FOR loop to loadFile() a changing songName, Create a Procedure with two Arrays first
  currentSong=0;
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  currentSong++;
  file = musicDirectory + cycles + fileExtension_mp3; //relative pathway or directory
  println( file );
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  currentSong++;
  file = musicDirectory + eureka + fileExtension_mp3; //relative pathway or directory
  println( file );
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  currentSong++;
  file = musicDirectory + ghostWalk + fileExtension_mp3; //relative pathway or directory
  println( file );
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  currentSong++;
  file = musicDirectory + groove + fileExtension_mp3; //relative pathway or directory
  println( file );
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  currentSong++;
  file = musicDirectory + newsroom + fileExtension_mp3; //relative pathway or directory
  println( file );
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  currentSong++;
  file = musicDirectory + startYourEngines + fileExtension_mp3; //relative pathway or directory
  println( file );
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  currentSong++;
  file = musicDirectory + simplest + fileExtension_mp3; //relative pathway or directory
  println( file );
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  //Music Testing
  currentSong=0;
  //println(currentSong);
  //playList[currentSong].play();
  //
} //End setup
//
void draw() {
  if ( playList[currentSong].isPlaying()==false && deactivateAutoPlay==false ) {
    if ( firstTime==true) {
      playList[currentSong].loop(0);
      firstTime=false; //Similar to WHILE
    } else {
      endOfPlayListCheck();
    }
    playList[currentSong].loop(0); //loops song ZERO times, only demonstrates .loop is possible
    //println("in draw() if");
    //Note: deactivateAutoPlay gives music function control to buttons & keyboard
    //AUTO-Play currently repeats one song
    //Including part of NEXT will autoplay multiple songs
  }
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
  if ( key=='P' || key=='p' ) {
    if ( playList[currentSong].isPlaying() ) {
      println("I am paused");
      deactivateAutoPlay();
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
          activeAutoPlay();
        } else {
          activeAutoPlay();
        }
        println("I am playing");
      }
    }
  }//End Play-Pause-Stop
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      deactivateAutoPlay();
      playList[currentSong].rewind();
      //
      endOfPlayListCheck();
      activeAutoPlay();
    } else {
      //
      playList[currentSong].rewind();
      //
      endOfPlayListCheck();
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }//End NEXT
  //
} //End keyPressed
//
void activeAutoPlay() {
  playList[currentSong].play();
  deactivateAutoPlay=false;
}//End Activate Auto Play
//
void deactivateAutoPlay() {
  playList[currentSong].pause();
  deactivateAutoPlay=true;
}//End Deactivate Auto Play
//
void endOfPlayListCheck() {
  if ( currentSong==numberOfSongs-1 ) {
    currentSong = 0;
  } else {
    currentSong++;
  }
}//End of Play List Error Check
//
// End Main Program
