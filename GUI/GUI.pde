void setup() {
  size (900, 700);
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
  ellipse(width*9/16 + width*1/100, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50); //
  ellipse(width*15/16 + width*1/60, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50);//Loop

  //Volume Buttons
  fill(255);
  ellipse(width*0.5/16, height*2/16, width*1/16 - width*1/50, width*1/16 - width*1/50);//up
  ellipse(width*0.5/16, height*3/16 + height*1/40, width*1/16 - width*1/50, width*1/16 - width*1/50);//down
  //---------------------------Box_1-----------------------------------
  rect(width*3/16, height*2/16, width*3/16, width*4/16, 15);
  fill(33);
  text("song1-name", width*3/16 + width*1/50, height*7/16 + height*1/35);
  fill(140);
  text("song1-artist", width*3/16 + width*1/50, height*8/16 - height*1/55);
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
