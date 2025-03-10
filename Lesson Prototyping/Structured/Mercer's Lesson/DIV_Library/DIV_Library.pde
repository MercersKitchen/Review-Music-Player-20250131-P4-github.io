/* Library Notes
  - File / Sketch / Import Library / Manage Libraries
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
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
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
  //
  //rect(X, Y Width, Height);
  rect(musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight);
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
