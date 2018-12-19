color red2 = #FF0000;
color green = #0AFF32;
color regularButton2 = red2;
color hoverOverButton2 = green;

void musicPlayerGUI_Setup() {
  background(193, 193, 193);

  rect(width*0, height*14/16 + height*1/22, width*1/16, width*1/16); // logo
  fill(210, 210, 210);
  rect(width*1/16, height*14/16 + height*1/22, width*15/16, width*1/16);//bottom bar
  fill(40);
  rect(width*9/16 + width*1/25, height*14/16 + height*1/18, width*5/16, width*1/23); //song bar
  fill(40, 40, 40);
  rect(width*0, height*0, width*1/16, height*14/16 + height*1/23); // left bar (black)
  fill(255, 255, 255);
  ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60); //play
  ellipse(width*3/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50); //back
  ellipse(width*5/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50); //next
  ellipse(width*9/16 + width*1/100, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50); //stop
  ellipse(width*15/16 + width*1/60, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50);//Loop

//--------------------New_Button-------------------------
  triangle(width*5/19 + width*1/65, height*39/40 - height*1/24, width*5/19 + width*2/55, height*34/35 - height*2/100, width*5/19 + width*1/65, height*39/40);
  rect(width*13/40 - width*1.1/40, height*15/16 - height*1/400, width*0.5/100, width*3/100);
  //ellipse(width*5/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50);
//-------------------------------------------------------
  //Volume Buttons
  fill(255);
  ellipse(width*0.5/16, height*2/16, width*1/16 - width*1/50, width*1/16 - width*1/50);//up
  ellipse(width*0.5/16, height*3/16 + height*1/40, width*1/16 - width*1/50, width*1/16 - width*1/50);//down
  //---------------------------Box_1-----------------------------------
  rect(width*3/16, height*2/16, width*3/16, width*4/16, 15);
  fill(33);
  text("5PM - Animal Crossing New Leaf Music", width*3/16 + width*1/50, height*7/16 + height*1/35);
  fill(140);
  text("Official Music for", width*3/16 + width*1/50, height*8/16 - height*1/55);
  text("Animal Crossing New Leaf", width*3/16 + width*1/50, height*8.3/16 - height*1/55);
  fill(255);
  //---------------------------Box_2-----------------------------------  
  rect(width*7/16, height*2/16, width*3/16, width*4/16, 15);
  fill(33);
  text("song2-name", width*7/16 + width*1/50, height*7/16 + height*1/35);
  fill(140);
  text("song2-artist", width*7/16 + width*1/50, height*8/16 - height*1/55);
  fill(255);

  //---------------------------Box_3-----------------------------------
  rect(width*11/16, height*2/16, width*3/16, width*4/16, 15);
  fill(33);
  text("song3-name", width*11/16 + width*1/50, height*7/16 + height*1/35);
  fill(140);
  text("song3-artist", width*11/16 + width*1/50, height*8/16 - height*1/55);
  fill(255);

  //---------------------------Box_4-----------------------------------
  rect(width*5/16, height*9/16 - height*1/24, width*3/16, width*4/16, 15);
  fill(33);
  text("song4-name", width*5/16 + width*1/50, height*13/16 + height*1/19);
  fill(140);
  text("song4-artist", width*5/16 + width*1/50, height*13/16 + height*1/14);
  fill(255);

  //---------------------------Box_5-----------------------------------
  rect(width*9/16, height*9/16 - height*1/24, width*3/16, width*4/16, 15);
  fill(33);
  text("song5-name", width*9/16 + width*1/50, height*13/16 + height*1/19);
  fill(140);
  text("song5-artist", width*9/16 + width*1/50, height*13/16 + height*1/14);
  fill(255);
}
