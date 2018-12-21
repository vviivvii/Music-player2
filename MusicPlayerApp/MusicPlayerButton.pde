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
  //Next
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


  //Previous
  if (mouseX>width*2/15 && mouseX<width*2.8/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        //println ("Current Song is the first song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        //println ("Current Song is now the last song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
        //println ("Current Song after the next or back button, but not the first song", "\tNumber: " + currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        //println ("Current Song is the first song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        //println ("Current Song is now the last song, ", "Number: " + currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
        //println ("Current Song after the next or back button, but not the first song, ", "Number: "+currentSong); //For Debugging
      }
    }
  }
  
  //Loop
  if ( mouseX>width*14/15 && mouseX<width*14.6/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) {
    println ("Pressed Loop button");
    if ( song[currentSong].isPlaying() ) {
      println ("isPlaying", song[currentSong].isPlaying());
      if (song[currentSong].isLooping()) {
        println ("isLooping()", song[currentSong].isLooping());
        song[currentSong].play();
      }
    } else {
      println ("isPlaying", song[currentSong].isPlaying());
      song[currentSong].loop();
    }
  }

//forward
if ( mouseX>width*1/15 && mouseX<width*14.6/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) song[currentSong].skip(1000);
//Volume Down

}
