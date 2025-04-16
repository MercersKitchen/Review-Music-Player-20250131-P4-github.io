//Global Variables

//
void aspectRatioAlgorithm() {
}//End Aspect Ratio Algorithm
//
void loadingImages() {
}//End Loading Images
//
// End Images
//Image Aspect Ratio Algorithm
String myFirstImagePathway = "Images/Landscape/bike.jpg";
String mySecondImagePathway = "Images/Portrait/10-star-wars-darth-vader-portrait-wallpaper-1-325x485.jpg";
myFirstImage = loadImage( myFirstImagePathway );
mySecondImage = loadImage( mySecondImagePathway );
int myFirstImageWidth = 860;
int myFirstImageHeight = 529;
int mySecondImageWidth = 325;
int mySecondImageHeight = 485;
//
/*
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
 //Centering the image, use imageXChanged or imageYChanged
 imageXChanged = imageDivX;
 float leftOverHeight = ( imageDivHeight - imageHeightChanged ) *1/2;
 imageYChanged = imageDivY + leftOverHeight ;
 } else {
 //height if imagePortrait(false) into divPortrait(false), imagePortrait(false) into imageLandscape(true)
 imageHeightChanged = imageDivHeight;
 imageWidthChanged = ( myFirstImageHeight >= imageDivHeight ) ? imageHeightChanged/imageAspectRatio_GreaterOne : imageHeightChanged*imageAspectRatio_GreaterOne ;
 if ( imageWidthChanged > imageDivWidth ) { //ERROR Catch
 println("Image Aspect Ratio algorithm ERROR");
 exit();
 }
 //Centering the image, use imageXChanged or imageYChanged
 }
 */
//ERROR: COPY PASTE Algorithm and Change Images, by hand
//Solved: Must turn off one COPY & PASTE
float imageAspectRatio_GreaterOne = ( mySecondImageWidth >= mySecondImageHeight ) ? float(mySecondImageWidth)/float(mySecondImageHeight) : float(mySecondImageHeight)/float(mySecondImageWidth) ; // Choice x / for bigger or smaller
println(imageAspectRatio_GreaterOne);
Boolean imageLandscape = ( mySecondImageWidth >= mySecondImageHeight ) ? true : false ;
Boolean divLandscape = ( imageDivWidth >= imageDivHeight ) ? true : false ;
if ( imageLandscape==true ) {
  //width if imageLandscape(true) into divLandscape(true), imageLandscape(true) into divPortrait(false)
  imageWidthChanged = imageDivWidth;
  imageHeightChanged = ( mySecondImageWidth >= imageDivWidth ) ? imageWidthChanged/imageAspectRatio_GreaterOne : imageWidthChanged*imageAspectRatio_GreaterOne ;
  if ( imageHeightChanged > imageDivHeight ) { //ERROR Catch
    println("Image Aspect Ratio algorithm ERROR");
    exit();
  }
  //Centering the image, use imageXChanged or imageYChanged
  imageXChanged = imageDivX;
  float leftOverHeight = ( imageDivHeight - imageHeightChanged ) *1/2;
  imageYChanged = imageDivY + leftOverHeight ;
} else {
  //height if imagePortrait(false) into divPortrait(false), imagePortrait(false) into imageLandscape(true)
  imageHeightChanged = imageDivHeight;
  imageWidthChanged = ( mySecondImageHeight >= imageDivHeight ) ? imageHeightChanged/imageAspectRatio_GreaterOne : imageHeightChanged*imageAspectRatio_GreaterOne ;
  if ( imageWidthChanged > imageDivWidth ) { //ERROR Catch
    println("Image Aspect Ratio algorithm ERROR");
    exit();
  }
  //Centering the image, use imageXChanged or imageYChanged
  //Centering the image, use imageXChanged or imageYChanged
  imageYChanged = imageDivY;
  float leftOverHeight = ( imageDivWidth - imageWidthChanged ) *1/2;
  imageXChanged = imageDivX + leftOverHeight ;
}
