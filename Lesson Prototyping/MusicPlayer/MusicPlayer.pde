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
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
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
  playList[currentSong].play();
  //
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
void draw() {} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
// End Main Program
