//Micaela Ronit Konig- 91857/6
//https://youtu.be/f1J3WnbjvWc


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim soundengine;
AudioSample Golpe;
AudioSample Dardo;
DianaArray da;

void setup() {
  soundengine = new Minim(this);
  Golpe = soundengine.loadSample("golpe.mp3", 2048);
  Dardo = soundengine.loadSample("Dardo.mp3", 2048);

  size(800, 800);
  da= new DianaArray();
}

void draw() {
  background(255);
  da.Dibujar();
  da.Funcion();
  println(da.suma, da.puntos, da.e);
}

void mouseReleased() {
  da.Puntos();
}

void keyPressed() {
  da.FuncionT();
}
