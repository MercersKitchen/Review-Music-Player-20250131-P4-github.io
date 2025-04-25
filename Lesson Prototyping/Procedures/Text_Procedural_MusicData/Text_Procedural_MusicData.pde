/* Text: from Static to Procedural
 - void procedures: grouping code
 - data structures, arrays to iterate through all values
 - purpose: find the smallest font for the entire app
 */
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 8; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
int shorterSide;
//
int textDIVs = 2;
float[] rectDIVX = new float[textDIVs];
float[] rectDIVY = new float[textDIVs];
float[] rectDIVWidth = new float[textDIVs];
float[] rectDIVHeight = new float[textDIVs];
//
void setup() {
  //Display
  //fullScreen();
  size(700, 500);
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  shorterSide = ( appWidth >= appHeight ) ? appHeight : appWidth ; //All 3 Geometries
  //
  minim = new Minim(this);
  String musicPathway = "Music All/";
  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download
  String song0 = "groove";
  String song1 = "The_Simplest";
  //Add all files, CS20 Review is special OS Java Library
  //Including the reading of the number of files in the array
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = "../../../" + musicPathway;
  //Create a FOR loop to loadFile() a changing songName
  String file = musicDirectory + song0 + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData [ currentSong ] = playList[ currentSong ].getMetaData();
  currentSong++;
  file = musicDirectory + song1 + fileExtension_mp3; //relative pathway or directoryplayListMetaData[ currentSong ] = playList[ currentSong ].getMetaData();
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library//Music Testing
  playListMetaData [ currentSong ] = playList[ currentSong ].getMetaData();
  //
  currentSong=0;
  //playList[currentSong].play();
  //
  //DIV for Text, Population
  rectDIVX[0] = rectDIVX[1] = appWidth*1/4; //Decreasing lines of code
  rectDIVY[0] = appHeight*1/4;
  rectDIVWidth[0] = rectDIVWidth[1] = appWidth*1/2; //Decreasing lines of code
  rectDIVHeight[0] = appHeight*1.5/10;
  rectDIVY[1] = appHeight*3/4;
  rectDIVHeight[1] = appHeight*1/10;
  for (int i=0; i<textDIVs; i++) {
    rect(rectDIVX[i], rectDIVY[i], rectDIVWidth[i], rectDIVHeight[i]);
  } //End Drawing DIVs
  //
  textSetup();
  //
  //Drawing Text, using Arrays and Data Structures
  for ( int i=0; i<textDIVs; i++ ) {
    fontSize[i] = fontSizeAlgorithm( fontSize[i], i, playListMetaData[i].title() );
    textDraw( fontSize[i], playListMetaData[i].title(), rectDIVX[i], rectDIVY[i], rectDIVWidth[i], rectDIVHeight[i] );
  } //End Drawing Text
  //
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousepressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN
