Boolean playButton = false;

void musicPlayerButton() {
  //Power Button, See Tab QuitButton

  //Play-Pause
  if (mouseX>width*3/15 && mouseX<width*3.7/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21)
    if (playButton == true) {
      playButton = false;
    } else {
      playButton = true;
    }
  //println(playButton); if play button does not work
  //Play-Pause Song
  if (mouseX>width*3/15 && mouseX<width*3.7/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21)
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
}

//Next
//Previous
//Volume Up
//Volume Down
//Media
