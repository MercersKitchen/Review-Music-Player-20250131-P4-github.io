//Dynamic Programming v Static
//
//Library - Minim
//
//Global Variables
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
} //End setup
//
void draw() {} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
// End Main Program
