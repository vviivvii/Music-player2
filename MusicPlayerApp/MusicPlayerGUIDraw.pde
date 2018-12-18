void MusicPlayerGUIDraw () {
  if (mouseX>width*3/15 && mouseX<width*3.7/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) {
    fill(hoverOverButton2);
    ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60);
    fill(255, 255, 255);
    triangle(width*4/19 + width*1/200, height*39/40 - height*1/24, width*4/19 + width*2/60, height*34/35 - height*2/100, width*4/19 + width*1/200, height*39/40);
  } else {
    fill(regularButton2);
    ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60);
    fill(255, 255, 255);
    triangle(width*4/19 + width*1/200, height*39/40 - height*1/24, width*4/19 + width*2/60, height*34/35 - height*2/100, width*4/19 + width*1/200, height*39/40);
  }
  if (playButton == false) {
    triangle(width*4/19 + width*1/200, height*39/40 - height*1/24, width*4/19 + width*2/60, height*34/35 - height*2/100, width*4/19 + width*1/200, height*39/40);
  } else {
    fill(regularButton2);
    ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60);
    fill(0);
    rect(width*10/40 - width*0.8/40, height*15/16 - height*1/400, width*1/100, width*3/100);
    rect(width*10/40 - width*2.1/60, height*15/16 - height*1/400, width*1/100, width*3/100);
  }
  if (playButton == true) {
    if (mouseX>width*3/15 && mouseX<width*3.7/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) {
      fill(hoverOverButton2);
      ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60);
      fill(0);
      rect(width*10/40 - width*0.8/40, height*15/16 - height*1/400, width*1/100, width*3/100);
      rect(width*10/40 - width*2.1/60, height*15/16 - height*1/400, width*1/100, width*3/100);
    }
  }
}
