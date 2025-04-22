// Text: from Static to Procedural
//
String title = "Wahoo!";
String footer = "Seim is Awesome!";
//
//Display
//fullScreen();
size(700, 500);
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
int shorterSide = ( appWidth >= appHeight ) ? appHeight : appWidth ; //All 3 Geometries
//
println("Start of Console");
/* Fonts from OS
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 */
PFont titleFont = createFont("Harrington", shorterSide); //Verify font exists
//Tools / Create Font / Find Font / Do Not Press "OK", known bug
//
//DIV for Text, Population
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
titleX = appWidth*1/4;
titleY = appHeight*1/4;
titleWidth = appWidth*1/2;
titleHeight = appHeight*1/10;
footerX = appWidth*1/4;
footerY = appHeight*3/4;
footerWidth = appWidth*1/2;
footerHeight = appHeight*1/10;
rect(titleX, titleY, titleWidth, titleHeight);
rect(footerX, footerY, footerWidth, footerHeight);
//
//Font Size relative to rect(Height)
float fontSize = 53; //Change the number until it fits, largest font size, int only to ease guessing
println("Manual entered font size:", fontSize);
/* Aspect Ratio Manipulations (changes to variables)
 - choose Aspect Ratio that must be mutliplied: fontSize/titleHeight
 - Rewriting fontSize with formulae
 */
float harringtonAspectRatio = fontSize / titleHeight;
fontSize = titleHeight * harringtonAspectRatio;
//println("Aspect Ratio:", harringtonAspectRatio);
//println(); //Skip a line
//
//Minimum Lines of code to format and draw text with colour
color purpleInk = #2C08FF;
fill(purpleInk); //Ink, hexidecimal copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, fontSize); //see variable note
//textFont() has option to combine font declaration with textSize()
//Drawing Text
text(title, titleX, titleY, titleWidth, titleHeight); //Height Aspect Ratio 
text(footer, footerX, footerY, footerWidth, footerHeight); //No Wraparound, will not show
color whiteInk = #FFFFFF;
fill(whiteInk); //reset
//
//Aspect Ratio of Specfic Font, calculations only to be entered in variables above
println( "Text Width:", textWidth(title), "v rectWidth:", titleWidth ); //Always smaller or cut off, if text is drawn, always drawn
println( "Text Height:", fontSize, "v. rectHeight:", titleHeight ); //largest fontSize that will be draw, relative to rectHeight
println( "Harrington Aspect Ratio ( fontSize/rect(height) ):", fontSize/titleHeight ); //Remember casting
