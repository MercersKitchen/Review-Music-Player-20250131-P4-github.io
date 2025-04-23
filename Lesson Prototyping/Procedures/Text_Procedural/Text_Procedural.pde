// Text: from Static to Procedural
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
  //Minimum Lines of code to format and draw text with colour
  color purpleInk = #2C08FF;
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(appFont, fontSize); //see variable note
  //textFont() has option to combine font declaration with textSize()
  //Drawing Text
  text(string[0], titleX, titleY, rectDIVWidth[0], rectDIVHeight[0]); //Height Aspect Ratio
  text(string[1], footerX, footerY, rectDIVWidth[1], rectDIVHeight[1]); //No Wraparound, will not show
  color whiteInk = #FFFFFF;
  fill(whiteInk); //reset
  //
  //Aspect Ratio of Specfic Font, calculations only to be entered in variables above
  println( "Text Width:", textWidth(string[0]), "v rectWidth:", rectDIVWidth[0] ); //Always smaller or cut off, if text is drawn, always drawn
  println( "Text Height:", fontSize, "v. rectHeight:", rectDIVHeight[0] ); //largest fontSize that will be draw, relative to rectHeight
  println( "Harrington Aspect Ratio ( fontSize/rect(height) ):", fontSize/rectDIVHeight[0] ); //Remember casting
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
