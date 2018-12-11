color red2 = #FF0000;
color green = #0AFF32;
color regularButton2 = red2;
color hoverOverButton2 = green;

void musicPlayerGUI_Setup() {
  rect(width*4/16, height*2/14, width*8/16, width*15/18, 10);

  //Play and Pause Button
  triangle(width*8/16, height*11/16 - height*1/24, width*9/16 - width*1/45, height*10/16 + height*1/24, width*8/16, height*11/16);//Play
  //rect(width*8/16 - width*1/24, height*10/16, width*0.5/16, width*1.5/16); //Pause 1 need to be fixed and update in the Musicplayerbutton when fixed.
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
