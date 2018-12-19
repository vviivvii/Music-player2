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
    
    if (mouseX>width*4/15 && mouseX<width*4.6/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) {
      if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        //println ("Current Song is the last song, ", "Number: "+currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        //println ("Current Song is now the first song or song, ", "Number: "+currentSong); //For Debugging
      } else {
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        //println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        //println ("Current Song is the last song, ", "Number: "+currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        //println ("Current Song is now the first song or song, ", "Number: "+currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        //println ("Current Song after the next or back button, but not the last song, ", "Number: "+currentSong); //For Debugging
      }
    }
  }
}

//Next
//Previous
//Volume Up
//Volume Down
//Media
