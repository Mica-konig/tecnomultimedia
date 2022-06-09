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
