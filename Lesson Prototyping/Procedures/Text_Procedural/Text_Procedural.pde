/* Text: from Static to Procedural
 - void procedures: grouping code
 - data structures, arrays to iterate through all values 
 - purpose: find the smallest font for the entire app
 */
//
//Global Variables
int shorterSide;
float titleX, titleY;
float footerX, footerY;
float[] rectDIVWidth = new float[2];
float[] rectDIVHeight = new float[2];
//
void setup() {
  //Display
  //fullScreen();
  size(700, 500);
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  shorterSide = ( appWidth >= appHeight ) ? appHeight : appWidth ; //All 3 Geometries
  //
  textSetup1();
  //
  //DIV for Text, Population
  titleX = appWidth*1/4;
  titleY = appHeight*1/4;
  rectDIVWidth[0] = appWidth*1/2;
  rectDIVHeight[0] = appHeight*1.5/10;
  footerX = appWidth*1/4;
  footerY = appHeight*3/4;
  rectDIVWidth[1] = appWidth*1/2;
  rectDIVHeight[1] = appHeight*1/10;
  rect(titleX, titleY, rectDIVWidth[0], rectDIVHeight[0]);
  rect(footerX, footerY, rectDIVWidth[1], rectDIVHeight[1]);
  //
  textSetup2();
  //
  //println(); //Skip a line
  //
  //Drawing Text
  textDraw(string[0], titleX, titleY, rectDIVWidth[0], rectDIVHeight[0]);
  textDraw(string[1], footerX, footerY, rectDIVWidth[1], rectDIVHeight[1]);
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
