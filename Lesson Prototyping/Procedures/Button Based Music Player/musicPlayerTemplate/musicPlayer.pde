//Global Variables
Boolean musicButton=false;
//float musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight;
//float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
//
void musicPlayerSetup() {
  //Population
  //musicButtonWidth = shorterSide*1/20;
  //musicButtonX = appWidth - musicButtonWidth;
  //musicButtonY = appHeight*0;
  //musicButtonHeight = shorterSide*1/20;
  //musicMenuX = appWidth*1/4;
  //musicMenuY = appHeight*1/4;
  //musicMenuWidth = appWidth*1/2;
  //musicMenuHeight = appHeight*1/2;
  //
  //DIVs
  //rect(X, Y, Width, Height);
  //rect(musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight);
  //rect(musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight);
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
