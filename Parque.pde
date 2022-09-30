
class Parque {
  // Clase fondo
float x, y;
float tamanio;
PImage parque;
Flores f;

// CONSTRUCCION
Mariposa mariposa1;
Mariposa mariposa2;
Mariposa mariposa3;


Parque (int xpos, int ypos, int t, int t2){
  x= xpos ;
  y= ypos ;
  tamanio= t ;
  tamanio= t2;
  parque= loadImage("parque2.jpg");
  
  mariposa1= new Mariposa (0, 100, 60, 60, 3);
  mariposa2= new Mariposa (600,200,40,40,2);
  mariposa3= new Mariposa (200, 300, 80, 80, 2.5);
  f= new Flores ();
}

 void mostrar(){
   imageMode(CENTER);
 image(parque, 300,300, 600,600);
 
 mariposa1.mostrar ();
 mariposa2.mostrar ();
 mariposa3.mostrar ();
 mariposa1.moverm ();
 mariposa2.moverm ();
 mariposa3.moverm ();
 }
}
