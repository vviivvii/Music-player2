//File / Sketch / Import Library / Add Library / Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 1;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;
void setup() {
  size(500, 600); //Console output, not visual data, text promptos only, not complete yet
  //Might need to add parametery, like size(512, 200, P3D);
  
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song[0] = minim.loadFile("Kenai – I like like you chill out music beats to studyrelax.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
} //End of setup()

void draw() {
  background(0);
  stroke(255);
  
  //Draw the waveforms
  //The values returned by left.get() and right.get() will be between -1 and 1,
  //  so we need to scale them up to see the waveform
  //Note: that if the file is MONO, left.get() and right.get() will return the same value
  
  for(int i = 0; i < song[currentSong].bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, song[currentSong].bufferSize(), 0, width );
    float x2 = map( i+1, 0, song[currentSong].bufferSize(), 0, width );
    line( x1, 20 + song[currentSong].left.get(i)*30, x2, 20 + song[currentSong].left.get(i+1)*30 );
    //line( x1, 100 + song[currentSong].right.get(i)*50, x2, 100 + song[currentSong].right.get(i+1)*50 );
  }
  
  //Draw a line to show where in the song playback is currently located              {This is the one}
  float posx = map(song[currentSong].position(), 0, song[currentSong].length(), 0, width);
  rect(width*1/16, height*8/16, width*13/16, width*1/16);
  stroke(0,200,0);
  line(posx, width*6/15, posx, height*8/15);
  
  //Draw text depending on whether music is playing
  if ( song[currentSong].isPlaying() )
  {
    text("Press p or P to PAUSE.", 10, 20 );
  }
  else
  {
    text("Press p or P to PLAY.", 10, 20 );
  }
} //End of draw()

void mousePressed() {
} //End of mousePressed()

void keyPressed() {
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
} //End of keyPressed()
