/* Static Program v Dynamic
 - Dynamic Programs use Global v local variables for system resources
 */
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
String title = "123456789012345678901"; //Add 'characters' to see when STRING is too long, i.e. 12345678901
float rectWidth = appWidth*1/2;
float rectHeight = appHeight*1/10;
rect (appWidth*1/4, appHeight*1/4, rectWidth, rectHeight); //Title Rectangle
//String[] fontList = PFont.list(); // Lists all fonts avaiable on system
//println("Starting of Console"); // If you cannot see this, the find another way to see the list on the program
//printArray(fontList); // for listing all possible fonts to choose from, then createFont
// See Tools / Create Font / DO NOT Press Ok, bug exists
// Choose a font you enjoy, attend to spelling, verify it exists
float fontSize = float(appHeight); //no font bigger than displayHeight, self-terminating algorithm
PFont titleFont = createFont ("Arial Black", fontSize);
/*Manually set the fontsize, verify visually
 fontSize = 84; //integer-value, bigest possible
 textSize (fontSize);
 */
//AUTO Calculate fontSize
float fontHeightAspectRatio_ArialBlack = 84.0 / rectHeight; //Recall CASTING
float accuracy = 0.01; //Change zeros for accuracy, i.e. <1%, & program speed
int interationCounter=0;
//Indexes are usually integers
for ( float i=1.0; fontSize/rectHeight > fontHeightAspectRatio_ArialBlack; i=1-accuracy) {
  fontSize = fontSize*i;
  //debugger for Program Speed
  //interationCounter++;
  //println("For " + fontSize + "  " + interationCounter);
} //End Font Calculator
//
//CONTINUE HERE
//Use Gr10 DIVs program to test mutliple texts
//
//fontSize = 57.0; //to estimate percentage of the fontWidth decrease or increase
textSize (fontSize); //Manditory for textWidth() Calculation
float percentageFontWidth = 0.74;
println( fontSize, textWidth(title), rectWidth, textWidth(title)/rectWidth ); //debugging unseen characters
for ( float i=1; textWidth(title)/rectWidth > percentageFontWidth ; i=1-accuracy ) {
  fontSize = fontSize*i;
  textSize (fontSize);
  //debugger for Program Speed
  //println("inside");
  //interationCounter++;
  //println("For", fontSize, textWidth(title), rectWidth, textWidth(title)/rectWidth, interationCounter);
}
//fontSize = 58.0;
println( fontSize, textWidth(title), rectWidth, textWidth(title)/rectWidth ); //debugging unseen characters
println(fontSize); //debugging only
//
textFont(titleFont, fontSize);
textAlign (CENTER, TOP); // [ LEFT | CENTER | RIGHT, TOP | CENTER | BOTTOM | BASELINE ]
fill (0); //Black Ink in Gray Scale 0-255
text(title, appWidth*1/4, appHeight*1/4, appWidth*1/2, appHeight*1/10);
fill (255); //Resetting the ink default, white
fontSize = appHeight; //Resetting the default
//Alternatively Pick the DIV to calcualte fontSize and maintain throughout the program
//Prototype Font Aspect-Ratio
