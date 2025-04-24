//Global Variables
PFont appFont;
float fontSize;
String[] string = new String[2];
//
void textSetup1() {
  /* Fonts from OS
   println("Start of Console");
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  fontSize = shorterSide;
  appFont = createFont("Harrington", fontSize); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
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
void textSetup2() {
  /* Aspect Ratio Manipulations (changes to variables), Font Size relative to rect(Height)
   - choose Aspect Ratio that must be mutliplied: fontSize/titleHeight
   - Rewriting fontSize with formulae
   */
  fontSize = shorterSide;
  //
  textHeightAlgorithm();
  //
  textWidthAlgorithm();
  //
} // End Text Setup 2
//
void textHeightAlgorithm() {
  //Finds the smallest rect(height); might cause issue with text font formatting
  for ( int i=0; i<rectDIVHeight.length; i++ ) {
    if ( fontSize > rectDIVHeight[i] ) fontSize = rectDIVHeight[i];
  }
} //End Text Height Algorithm
//
void textWidthAlgorithm() {
  float harringtonAspectRatio = 1.04;
  fontSize = fontSize * harringtonAspectRatio;
  //println("Aspect Ratio:", harringtonAspectRatio);
  //
  textFont(appFont, fontSize); //Manditory, for textWidth()
  float fontSize_temp=fontSize;
  for ( int i=0; i<rectDIVWidth.length; i++ ) {
    if ( textWidth( string[i] ) > rectDIVWidth[i] ) {
      while ( textWidth( string[i] ) > rectDIVWidth[i] ) {
        fontSize_temp = fontSize_temp*0.99;
        textFont(appFont, fontSize_temp); //Manditory, for textWidth()
      }
      fontSize = fontSize_temp;
    }
    textFont(appFont, fontSize);
  }
} //End Text Width Algorithm
//
void textDraw( String text, float X, float Y, float W, float H ) { //Local Variables
  preTextDraw();
  text(text, X, Y, W, H);
  resettingVariables();
} //End Text Draw
//
void preTextDraw() {
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
