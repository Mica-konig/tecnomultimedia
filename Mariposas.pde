
class Mariposa {

  PImage [] imagenp = new PImage [4];
  float posicionx = width/2; //Coordenada x
  float posiciony = height/2; //Coordenada y
  float tamano1; //Tamaño de la imagen
  float tamano2; //Tamaño de la imagen
  float velX;
  int c;

  Mariposa (int posx, int posy, int ancho, int alto, float velx) { //Constructor
    posicionx = posx;
    posiciony = posy;
    tamano1 = ancho; 
    tamano2 = alto;
    velX=velx;
    
    imagenp [0]= loadImage("mariposa1.jpg");
    imagenp [1]= loadImage("mariposa2.png");
    imagenp [2]= loadImage("mariposa3.jpg");
    imagenp [3]= loadImage("mariposa4.png");  
  }

  void mostrar() {
    image(imagenp[3], posicionx, posiciony, tamano1, tamano2);
  }

  void mover() {
    posicionx =posicionx+velX;
    if (posicionx >width ) {
      posicionx= 0;
      posiciony=random(0, 200);
    }
  }
}
