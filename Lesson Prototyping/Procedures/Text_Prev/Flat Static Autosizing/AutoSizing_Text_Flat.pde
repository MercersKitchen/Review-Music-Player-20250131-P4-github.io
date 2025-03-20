/* Printing Text into Title Bar
 - Develop Font Aspect Ratio Numbers: fontSize, rect(height)
 - Hardcode these numbers
 - Strings are not shown if rect(height) too small to include white space
 - String are not shown if text(width) longer than rect(width)
 - Use PRINTLN() to inspect variables
 
 Need ... truth table
 - If rect(height) bigger, increase font size
 - CAUTION: this will change text size throughout all boxes
 - Might need to hardcode media tolerances (2x bigger, etc.)
 - If text(width > rect(width), decrease font size
 fontSize
 */

fullScreen();
String title = "12345678901234567890123"; //Add 'characters' to see when STRING is too long
float fontAspectRatio = 84.0/108.0; // fontSize/rect(height) to see specificfont (character+whiteSpace)
PFont titleFont;
//String[] fontList = PFont.list(); // Lists all fonts avaiable on system
//println("Starting of Console"); // If you cannot see this, the find another way to see the list on the program
//printArray(fontList); // for listing all possible fonts to choose from, then createFont
float fontSize = float(height); //height is smaller dimension
titleFont = createFont ("Arial-Black", fontSize); //Copy spelling from CreateFont
rect (displayWidth*1/4, displayHeight*1/4, displayWidth*1/2, displayHeight*1/10); //Title Rectangle
textFont(titleFont, fontSize); // Type of font needed for calculation, size needed for function
textAlign (CENTER, TOP);


//Cannot see the font b/c enough space for White Space
//println( "Height", fontAspectRatio, fontSize, displayHeight*1/10, "Wrong Ratio", fontSize/float(displayHeight*1/10) );
//int interationCounter = 0; //for debugging program speed
float accuracy=0.000001; //Change zeros for accuracy, i.e. <1%, & program speed
for (float i=1; fontSize/float(displayHeight*1/10) > 84.0/108.0; i=i-accuracy ) {
  fontSize = fontSize*i;
  textSize (fontSize);
  //interationCounter++;
  //println("For " + fontSize + "  " + interationCounter);
}
//println ( "Height", 84/float(displayHeight*1/10), fontSize, displayHeight*1/10, fontSize/float(displayHeight*1/10) );
textSize (fontSize);
//
//Can see the correct number of characters
//Does text need to get bigger or smaller due to aspectRatio and new rect(height)
//Then text(width) v rect(width)
println( "Length", textWidth(title), displayWidth*1/2 );
for (float i=1; textWidth(title) > displayWidth*1/2; i=i-accuracy) {
  fontSize = fontSize*i;
  textSize (fontSize);
  //interationCounter++;
  //println("For " + fontSize + "  " + interationCounter);
}
println ( fontSize );
textSize (fontSize);
//textSize(84);

fill (0); //Black Ink
text(title, displayWidth*1/4, displayHeight*1/4, displayWidth*1/2, displayHeight*1/10);
fill (255);

//Another Piece of Text
//CAUTION, not finished yet
/*
String endCopy = "Bottom of the Page"; //  String must be "long enough"
rect (displayWidth*1/4, displayHeight*9/10, displayWidth*1/4, displayHeight*1/10); //Title Rectangle
textAlign (CENTER, CENTER); //Horizontal and Vertical CENTER'ing
//Can see the correct number of characters
println( "Length", textWidth(title), displayWidth*1/2 );
for (float i=1; textWidth(title) > displayWidth*1/2; i=i-accuracy) {
  fontSize = fontSize*i;
  textSize (fontSize);
  //interationCounter++;
  //println("For " + fontSize + "  " + interationCounter);
}
textSize (fontSize);
fill (0); //Black Ink
text(endCopy, displayWidth*1/4, displayHeight*9/10, displayWidth*1/4, displayHeight*1/10);
fill (255);
*/
