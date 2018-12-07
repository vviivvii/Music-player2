void MusicPlayerGUIDraw () {
  if (mouseX>width*9/20 && mouseX<width*9/16 && mouseY>height*10/16 && mouseY<height*14/20) {
    fill(hoverOverButton2);
    rect(width*8/16 - width*1/24, height*5/8, width*1/10, width*1/10, 15);
    fill(255,255,255);
    triangle(width*8/16, height*11/16 - height*1/24, width*9/16 - width*1/45, height*10/16 + height*1/24, width*8/16, height*11/16);
  } else {
    fill(regularButton2);
    rect(width*8/16 - width*1/24, height*5/8, width*1/10, width*1/10, 15);
    fill(255,255,255);
    triangle(width*8/16, height*11/16 - height*1/24, width*9/16 - width*1/45, height*10/16 + height*1/24, width*8/16, height*11/16);
  }
  
}
