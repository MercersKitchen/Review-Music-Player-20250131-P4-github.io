//Global Variables
Boolean musicButton=false;
//
void musicPlayerSetup() {
  //Population
  //
  //DIVs
  //rect(X, Y, Width, Height);
  //
}//End setup
//
void musicPlayerDraw() {
  println("Wahoo Music is Playing, can you hear it");
}//End draw
//
void musicPlayerMousePressed() {
}//End mousePressed
//
void musicPlayerKeyPressed() {
  //Music Button Activation
  if ( key=='M' || key=='m' ) {
    if ( musicButton==true ) {
      musicButton=false;
    } else {
      musicButton=true;
    }
  }//Music Button Activation
}//End keyPressed
//
//End Subprogram Music Player
