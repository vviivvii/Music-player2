color red2 = #FF0000;
color green = #0AFF32;
color regularButton2 = red2;
color hoverOverButton2 = green;

void musicPlayerGUI_Setup() {
  rect(width*4/16, height*2/14, width*8/16, width*15/18, 10);

  //Play and Pause Button
  triangle(width*4/16, height*2/16, width*5/16, height*3/16 - height*1/24, width*4/16, height*3/16); //Play
  //line() //Pause 1
  //line() //Pause 2

  //Next and Previous Buttons
  /*
  triangle(); //Next Button
   triangle();
   line();
   triangle();//previous
   triangle();
   line();
   */

  //Volume Buttons
  /*
  line(); // Volume Up
   line();
   line(); // Volume Down
   */
}
