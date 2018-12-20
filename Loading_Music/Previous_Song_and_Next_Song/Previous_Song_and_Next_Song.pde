//File / Sketch / Import Library / Add Library / Click Minim
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
int currentSong = numberOfSongs - numberOfSongs; //Uses formula or FileIO Memory

void setup() {
  //size(): Console output, not visual data, text promptos only, not complete yet

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song[0] = minim.loadFile("5PM - Animal Crossing New Leaf Music.mp3");
  song[1] = minim.loadFile("Kenai - Nobody Knows.mp3");
  song[2] = minim.loadFile("Kenai – I like like you - chill out music beats to studyrelax.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
  println("Press N to Next Song");
  println("Press B to back song need to get fixed");
}

void draw() {
}

void mousePressed() {
}

void keyPressed() {
  println ("Current Song before the next or back button, ", "Number: "+currentSong); //For Debugging
  if (key == 'n' || key == 'N') { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: "+currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song or song, ", "Number: "+currentSong); //For Debugging
      } else {
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: "+currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song or song, ", "Number: "+currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song, ", "Number: "+currentSong); //For Debugging
      }
    }
  }

  if (key == 'b' || key == 'B') { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        println ("Current Song is the first song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        println ("Current Song is now the last song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the first song", "\tNumber: " + currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        println ("Current Song is the first song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        println ("Current Song is now the last song, ", "Number: " + currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the first song, ", "Number: "+currentSong); //For Debugging
      }
    }
  }

  if (key == 'p' || key == 'P') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
}
