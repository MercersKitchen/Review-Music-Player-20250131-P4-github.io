//Dynamic Programming
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float imageDivX, imageDivY, imageDivWidth, imageDivHeight;
float imageXChanged, imageYChanged, imageWidthChanged, imageHeightChanged; //Image Aspect Algorithm
//
PImage myFirstImage, mySecondImage;
color red=#FF0000;
//
void setup() {
  //Display
  //fullScreen();
  size(700, 500);
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //
  //Population
  imageDivX = appWidth*1/4;
  imageDivY = appHeight*1/4;
  imageDivWidth = appWidth*1/2;
  imageDivHeight = appHeight*1/2;
  //
  //DIV
  fill(red);
  rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
  //
  //Prototype Images: First v Second
  //image( myFirstImage, imageXChanged, imageYChanged, imageWidthChanged, imageHeightChanged );
  image( mySecondImage, imageXChanged, imageYChanged, imageWidthChanged, imageHeightChanged );
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
} //End keyPressed
//
// End Main Program
