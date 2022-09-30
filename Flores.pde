
class Flores {
 PImage flor, flor2, flor3;
  boolean cambia;
  Flores(){
    flor= loadImage ("flor.png");
    flor2= loadImage ("flor3.png");
  }
  void mostrar() {
    image(flor3, 300, 200, 50, 50);
  }
  void Cambio() {
    cambia= !cambia;
    if (cambia) {
      flor=flor2;
    } else {
      flor=flor3;
    }
  }
}
