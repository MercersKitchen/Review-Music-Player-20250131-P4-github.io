//Dynamic Programming v Static
//
//Library - Minim
//
//Global Variables
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
float imageX, imageY, imageWidth, imageHeight;
float playInfiniteX, playInfiniteY, playInfiniteWidth, playInfiniteHeight;
float stopX, stopY, stopWidth, stopHeight;
float soundEffectsX, soundEffectsY, soundEffectsWidth, soundEffectsHeight;
//
void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  //Population
  musicMenuWidth = appWidth*1/2;
  soundEffectsWidth = stopWidth = playInfiniteWidth = imageWidth = imageX = musicMenuX = appWidth*1/4;
  soundEffectsX = stopX = playInfiniteX = musicMenuX + appWidth*1/4;
  imageHeight = musicMenuHeight = appHeight*1/2;
  imageY = playInfiniteY = musicMenuY = appHeight*1/4;
  soundEffectsHeight = stopHeight = playInfiniteHeight = appHeight*1/6;
  soundEffectsY = musicMenuY + appHeight*1/3;
  stopY = musicMenuY + appHeight*1/6;
  //
  //rect(X, Y, Width, Height);
  rect(musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight);
  rect(imageX, imageY, imageWidth, imageHeight);
  rect(playInfiniteX, playInfiniteY, playInfiniteWidth, playInfiniteHeight);
  rect(stopX, stopY, stopWidth, stopHeight);
  rect(soundEffectsX, soundEffectsY, soundEffectsWidth, soundEffectsHeight);
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
