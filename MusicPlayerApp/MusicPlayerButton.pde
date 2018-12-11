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
  
}
//Next
//Previous
//Volume Up
//Volume Down
//Media
