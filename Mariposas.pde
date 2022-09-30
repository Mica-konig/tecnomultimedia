
class Mariposa {

  PImage [] imagenm = new PImage [4];
  float posicionx = width/2; 
  float posiciony = height/2; 
  float tamanio1; 
  float tamanio2; 
  float velX;
  int c;

//Constructor
  Mariposa (int posx, int posy, int ancho, int alto, float velx) { 
    posicionx = posx;
    posiciony = posy;
    tamanio1 = ancho; 
    tamanio2 = alto;
    velX=velx;
    
    imagenm [0]= loadImage("mariposa1.jpg");
    imagenm [1]= loadImage("mariposa2.png");
    imagenm [2]= loadImage("mariposa3.jpg");
    imagenm [3]= loadImage("mariposa4.png");  
  }

  void mostrar() {
    image(imagenm[3], posicionx, posiciony, tamanio1, tamanio2);
  }

  void moverm() {
    posicionx =posicionx+velX;
    if (posicionx >width ) {
      posicionx= 0;
      posiciony=random(20, 150);
    }
  }
}
