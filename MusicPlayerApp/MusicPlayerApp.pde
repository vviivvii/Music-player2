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
  size (900, 700);
  //Using Width and Height Key Varaibles, communciaiton to the display Geometry
  //println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Javanese Text", 48);//Must also tools/ Create Font/ Find Font

  //Songs
  minim = new Minim(this); //load from data directory, loadFile should also load from libray
  song1 = minim.loadFile("5PM - Animal Crossing New Leaf Music.mp3");

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
