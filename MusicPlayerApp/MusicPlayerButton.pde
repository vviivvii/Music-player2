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
  
  if (playButton == true) song1.play();
  if (playButton == false) song1.pause();
}
//Next
//Previous
//Volume Up
//Volume Down
//Media
