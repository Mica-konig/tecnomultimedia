//https://www.youtube.com/watch?v=EDCh1UYbmpM
int cant= 13;
int tam;
int ancho;

void setup() {
  size (600, 600);
  tam= width/cant;
}
void draw() {
  background (120, 100, 150);
  cuadrados();
}
void mousePressed() {
  if (cant>1) {
    cant--;
  }
}
void keyPressed () {
  cant= 13;
  ancho= width/cant;
}

void cuadrados () {
  for (int i=0; i<cant; i+=1) {
    for (int j=0; j<cant; j++) {
      float distan= dist (mouseX, mouseY, i*tam+ tam/2, j*tam+tam/2);
      float diagonal= dist (0, 0, width, height);
      float ancho= map (distan, 0, diagonal, tam/4, tam*2);
      float relleno= map (distan, 0, diagonal, 255, 20);
      fill (150, 100, 150, relleno);
      noStroke();
      rect (i*tam+ tam/2, j*tam+tam/2, ancho, ancho);
    }
  }
  for (int i=0; i<cant; i++) {
    if (i%2==0) {
      fill(255, 0, 0);
    } else {
      fill(200);
    }
  }
}
  
