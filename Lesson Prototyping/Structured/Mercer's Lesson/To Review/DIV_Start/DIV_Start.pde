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
  musicMenuX = appWidth*1/4;
  musicMenuY = appHeight*1/4;
  musicMenuWidth = appWidth*1/2;
  musicMenuHeight = appHeight*1/2;
  
  imageX = musicMenuX;
  imageY = musicMenuY;
  imageWidth = musicMenuWidth*1/2;
  imageHeight = musicMenuHeight;
  playInfiniteX = musicMenuX + musicMenuWidth*1/2;
  playInfiniteY = musicMenuY;
  playInfiniteWidth = imageWidth;
  playInfiniteHeight = musicMenuHeight*1/3;
  stopX = musicMenuX + musicMenuWidth*1/2;
  stopY = musicMenuY + musicMenuHeight*1/3;
  stopWidth = imageWidth;
  stopHeight = musicMenuHeight*1/3;
  soundEffectsX = musicMenuX + musicMenuWidth*1/2;
  soundEffectsY = musicMenuY + musicMenuHeight*2/3;
  soundEffectsWidth = imageWidth;
  soundEffectsHeight = musicMenuHeight*1/3;
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
