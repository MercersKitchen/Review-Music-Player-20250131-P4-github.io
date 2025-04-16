//Dynamic Programming
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float imageDivX, imageDivY, imageDivWidth, imageDivHeight;
float imageWidthChanged, imageHeightChanged;
//
PImage myFirstImage;
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
  //Image Aspect Ratio Algorithm
  String myFirstImagePathway = "Images/Landscape/bike.jpg";
  myFirstImage = loadImage( myFirstImagePathway );
  int myFirstImageWidth = 860;
  int myFirstImageHeight = 529;
  float imageAspectRatio_GreaterOne = ( myFirstImageWidth >= myFirstImageHeight ) ? float(myFirstImageWidth)/float(myFirstImageHeight) : float(myFirstImageHeight)/float(myFirstImageWidth) ; // Choice x / for bigger or smaller
  println(imageAspectRatio_GreaterOne);
  Boolean imageLandscape = ( myFirstImageWidth >= myFirstImageHeight ) ? true : false ;
  Boolean divLandscape = ( imageDivWidth >= imageDivHeight ) ? true : false ;
  if ( imageLandscape==true ) {
    //width if imageLandscape(true) into divLandscape(true), imageLandscape(true) into divPortrait(false)
    imageWidthChanged = imageDivWidth;
    imageHeightChanged = ( myFirstImageWidth >= imageDivWidth ) ? imageWidthChanged/imageAspectRatio_GreaterOne : imageWidthChanged*imageAspectRatio_GreaterOne ;
    if ( imageHeightChanged > imageDivHeight ) { //ERROR Catch
      println("Image Aspect Ratio algorithm ERROR");
      exit();
    }
  } else {
    //height if imagePortrait(false) into divPortrait(false), imagePortrait(false) into imageLandscape(true)
    imageHeightChanged = imageDivHeight;
    imageWidthChanged = ( myFirstImageHeight >= imageDivHeight ) ? imageHeightChanged/imageAspectRatio_GreaterOne : imageHeightChanged*imageAspectRatio_GreaterOne ;
    if ( imageWidthChanged > imageDivWidth ) { //ERROR Catch
      println("Image Aspect Ratio algorithm ERROR");
      exit();
    }
  }
  //
  //DIV
  rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
  //
  //Prototype Images
  image( myFirstImage, imageDivX, imageDivY, imageWidthChanged, imageHeightChanged );
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
