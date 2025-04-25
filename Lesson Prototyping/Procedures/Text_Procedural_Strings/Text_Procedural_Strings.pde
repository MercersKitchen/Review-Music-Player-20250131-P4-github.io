/* Text: from Static to Procedural
 - void procedures: grouping code
 - data structures, arrays to iterate through all values
 - purpose: find the smallest font for the entire app
 */
//
//Global Variables
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
    fontSize[i] = fontSizeAlgorithm( fontSize[i], i );
    textDraw( fontSize[i], string[i], rectDIVX[i], rectDIVY[i], rectDIVWidth[i], rectDIVHeight[i] );
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
