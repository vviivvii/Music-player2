import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Boolean playButton = false;
Minim minim;
AudioPlayer song1;

void setup () {
  size(500, 600);
  rect(width*8/16 - width*1/24, height*5/8, width*1/10, width*1/10, 15);

  minim = new Minim(this); //load from data directory, loadFile should also load from libray
  song1 = minim.loadFile("5PM - Animal Crossing New Leaf Music.mp3");
}

void draw () {
  if (mouseX>width*9/20 && mouseX<width*9/16 && mouseY>height*10/16 && mouseY<height*14/20) {
    fill(255, 255, 0);
    rect(width*8/16 - width*1/24, height*5/8, width*1/10, width*1/10, 15);
    fill(255, 255, 255);
    triangle(width*8/16, height*11/16 - height*1/24, width*9/16 - width*1/45, height*10/16 + height*1/24, width*8/16, height*11/16);
  } else {
    fill(0, 255, 255);
    rect(width*8/16 - width*1/24, height*5/8, width*1/10, width*1/10, 15);
    fill(255, 255, 255);
    triangle(width*8/16, height*11/16 - height*1/24, width*9/16 - width*1/45, height*10/16 + height*1/24, width*8/16, height*11/16);
  }
}

void mouseClicked() {

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
