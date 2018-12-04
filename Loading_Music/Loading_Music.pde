//Fille / Sketch / Import Library/Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1;

void setup () {
  //size(): Console output, not visial data promptos only, not complete yet

  minim = new Minim(this); //load from data directory, loadFile should also load from libray
  song1 = minim.loadFile("song name");

  println("Start of Console");
  println("Click the Console to Finsih Starting this program");
  println("Press P to Play and Pause");
}

void draw() {
}

void mousePressed() {
}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    if (song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position () == song1.length()) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }

  song1.isPlaying()

    song1.pause()
}
