import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 5;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs; //Uses formula or FileIO Memory

void setup () {
  size (900, 700);
  //Using Width and Height Key Varaibles, communciaiton to the display Geometry
  //println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Javanese Text", 48);//Must also tools/ Create Font/ Find Font

  //Songs
  minim = new Minim(this); //load from data directory, loadFile should also load from libray
  song[0] = minim.loadFile("5PM - Animal Crossing New Leaf Music.mp3");
  song[1] = minim.loadFile("mr. hong  bittersweet chocolate.mp3");
  song[2] = minim.loadFile("stream_error - sometimes.mp3");
  song[3] = minim.loadFile("Kenai – I like like you chill out music beats to studyrelax.mp3");
  song[4] = minim.loadFile("Kenai - Nobody Knows.mp3");

  musicPlayerGUI_Setup();
  //Music_Visualzersetup();
}

void draw() {
  quitButtonDraw ();
  //Music_Viaulzerdraw();
  MusicPlayerGUIDraw ();
}

void mouseClicked() {
  quitButtonMouseClicked();
  musicPlayerButton();
}
