Boolean playButton = false;

void musicPlayerButton() {
  //Power Button, See Tab QuitButton

  //Play-Pause
  if (mouseX>width*9/20 && mouseX<width*9/16 && mouseY>height*10/16 && mouseY<height*14/20)
    if (playButton == true) {
      playButton = false;
    } else {
      playButton = true;
    }
  println(playButton);
  
  if (playButton == false) {
    triangle(width*8/16, height*11/16 - height*1/24, width*9/16 - width*1/45, height*10/16 + height*1/24, width*8/16, height*11/16);
  }else{
    rect(width*0.5/16, height*1/16, width*0.5/16, height*1/16);rect(width*8/16 - width*1/24, height*10/16, width*0.5/16, width*1.5/16);
  }
}
//Next
//Previous
//Volume Up
//Volume Down
//Media
