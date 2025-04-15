/* Library Notes
 - File / Sketch / Import Library / Manage Libraries
 - Note: copy/paste will not add the libraru into the IDE, must use above
 - We use Minim for Sound and Sound Effects
 - Able to Google-search libraries to make your project easier
 - Documentation: https://code.compartmental.net/minim/
 - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
 - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
 
 ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
 - Processing-Java Libraries must be installed into the IDE
 - Java Libraries simply require the 'import' declaration
 */
//Library - Minim
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
int stopButtonTimer=0, stopTimer=5, stopTimeStamp=0;
Boolean deactivateAutoPlay=false;
//
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
//
//
void setup() {
  //Display
  //fullScreen();
  size(700, 500); //Prototyping Only
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  //
  //Music Library
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
  String musicDirectory = "../../" + musicPathway;
  String file = musicDirectory + pongWorld + fileExtension_mp3; //relative pathway or directory
  println( file );
  //Create a FOR loop to loadFile() a changing songName
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //Music Testing
  //playList[currentSong].play();
  //
  //Population
  musicMenuX = appWidth*1/4;
  musicMenuY = appHeight*1/4;
  musicMenuWidth = appWidth*1/2;
  musicMenuHeight = appHeight*1/2;
  //
  //DIVs
  //rect(X, Y Width, Height);
  rect(musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight);
  //rect(imageX, imageY, imageWidth, imageHeight);
  //rect(loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight);
  //rect(stopX, stopY, stopWidth, stopHeight);
  //rect(soundEffectsX, soundEffectsY, soundEffectsWidth, soundEffectsHeight);
  //
} //End setup
//
void draw() {
  if ( playList[currentSong].isPlaying()==false && deactivateAutoPlay==false ) {
    playList[currentSong].loop(0); //loops song ZERO times, only demonstrates .loop is possible
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
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ;
   */
  //
  //Intermedate Algorithm : Play-Pause-Stop
  if ( key=='P' || key=='p' ) {
    //Suspend Autoplay wth Boolean, engage it when playing againp
    if ( playList[currentSong].isPlaying() ) {
      println("I am paused");
      deactiveAutoPlay();
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
  }
  //
  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  //if ( key=='P' || key=='p' ) playList[currentSong].loop(0); //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  /*
  if ( key=='O' || key=='o' ) { // Pause
   //
   if ( playList[currentSong].isPlaying() ) {
   playList[currentSong].pause();
   } else {
   playList[currentSong].play();
   }
   }
   */
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  /*
  if ( key=='S' | key=='s' ) {
   if ( playList[currentSong].isPlaying() ) {
   playList[currentSong].pause(); //single tap
   } else {
   playList[currentSong].rewind(); //double tap
   }
   }
   */
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='W' || key=='w' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( playList[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      playList[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      playList[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      deactiveAutoPlay();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      activeAutoPlay();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play(); //See Active Play Button
    }
  }
  //if ( key=='P' || key=='p' ) ; // Previous //Students to finish
  //
  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
  //Note: will randomize the currentSong number
  //Caution: random() is used very often
  //Question: how does truncating decimals affect returning random() floats
  /*
  if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
   - need to have basic GUI complete first
   */
  //
} //End keyPressed
//
void activeAutoPlay() {
  playList[currentSong].play();
  deactivateAutoPlay=false;
}//End Activate Auto Play
//
void deactiveAutoPlay() {
  playList[currentSong].pause();
  deactivateAutoPlay=true;
}//End Activate Auto Play
//
// End Main Program
