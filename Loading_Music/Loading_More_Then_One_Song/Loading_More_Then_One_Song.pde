//Fille / Sketch / Import Library/Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];

void setup () {
  //size(): Console output, not visial data promptos only, not complete yet

  minim = new Minim(this); //load from data directory, loadFile should also load from libray
  song[0] = minim.loadFile("5PM - Animal Crossing New Leaf Music.mp3");
  song[1] = minim.loadFile("Kenai - Nobody Knows.mp3");
  song[2] = minim.loadFile("Kenai – I like like you ♡  chill out music beats to studyrelax.mp3"); 
}

  void keyPressed() {
    int currentSong = 0;
    if (key == 'p' || key == 'P') {
      if (song[currentSong].isPlaying() ) {
        song[currentSong].pause();
      } else if ( song[currentSong].position () == song[currentSong].length()) {
        song[currentSong].rewind();
        song[currentSong].play();
      } else {
        song[currentSong].play();
      }
    }
