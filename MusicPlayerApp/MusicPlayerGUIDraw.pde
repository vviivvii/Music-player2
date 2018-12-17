void MusicPlayerGUIDraw () {
  if (mouseX>width*3/20 && mouseX<width*5/16 && mouseY>height*18/20 && mouseY<height*19/20) { // need fixing
    fill(hoverOverButton2);
    ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60);
    fill(255, 255, 255);
    triangle(width*8/16, height*11/16 - height*1/24, width*9/16 - width*1/45, height*10/16 + height*1/24, width*8/16, height*11/16);
  } else {
    fill(regularButton2);
    ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60);
    fill(255, 255, 255);
    triangle(width*8/16, height*11/16 - height*1/24, width*9/16 - width*1/45, height*10/16 + height*1/24, width*8/16, height*11/16);
  }
  if (playButton == false) {
    triangle(width*8/16, height*11/16 - height*1/24, width*9/16 - width*1/45, height*10/16 + height*1/24, width*8/16, height*11/16);
  } else {
    fill(regularButton2);
    ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60);
    fill(255, 255, 255);
    rect(width*9/16 - width*1/24, height*10/16 + height*1/100, width*0.4/16, width*1.1/16);
    rect(width*9/16 - width*2/24, height*10/16 + height*1/100, width*0.4/16, width*1.1/16);
  }
}
