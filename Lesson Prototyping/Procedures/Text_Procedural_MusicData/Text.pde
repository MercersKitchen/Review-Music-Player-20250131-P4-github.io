//Global Variables
PFont appFont;
float[] fontSize = new float[textDIVs];
String[] string = new String[textDIVs];
//
void textSetup() {
  /* Fonts from OS
   println("Start of Console");
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  appFont = createFont("Harrington", shorterSide); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //
  for ( int i=0; i<textDIVs; i++ ) {
    fontSize[i] = shorterSide;
  } //End Reading Font Size
  //
  stringVarsEntry();
  //
} //End Text Setup
//
void stringVarsEntry() {
  string[0] = "Wahoo!";
  string[1] = "Seim is Awesome!";
} //End String Varaibles Text Entry
//
float fontSizeAlgorithm( float fontSize, int i ) {
  fontSize = textHeightAlgorithm( fontSize, i );
  fontSize = textWidthAlgorithm( fontSize, i );
  return fontSize;
} //End Font Size Algorithm
//
float textHeightAlgorithm( float fontSize, int i ) {
  if ( fontSize > rectDIVHeight[i] ) fontSize = rectDIVHeight[i];
  return fontSize;
} //End Text Height Algorithm
//
float textWidthAlgorithm( float fontSize, int i) {
  float harringtonAspectRatio = 1.04;
  fontSize = fontSize * harringtonAspectRatio;
  //println("Aspect Ratio:", harringtonAspectRatio);
  //
  textFont(appFont, fontSize); //Manditory, for textWidth()
  float fontSize_temp=fontSize;
  if ( textWidth( string[i] ) > rectDIVWidth[i] ) {
    while ( textWidth( string[i] ) > rectDIVWidth[i] ) {
      fontSize_temp = fontSize_temp*0.99;
      textFont(appFont, fontSize_temp); //Manditory, for textWidth()
    }
    fontSize = fontSize_temp;
  }
  return fontSize;
} //End Text Width Algorithm
//
void textDraw( float fontSize, String text, float X, float Y, float W, float H ) { //Local Variables
  preTextDraw( fontSize );
  text(text, X, Y, W, H);
  resettingVariables();
} //End Text Draw
//
void preTextDraw( float fontSize) {
  color purpleInk = #2C08FF;
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(appFont, fontSize); //see variable note
  //textFont() has option to combine font declaration with textSize()
} //End Pre Text Code
void resettingVariables() {
  color whiteInk = #FFFFFF;
  fill(whiteInk); //reset
} //End Resetting Variables
//
//End Text Subprogram
