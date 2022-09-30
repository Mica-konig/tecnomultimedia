// https://youtu.be/unyqoDfGOZ0
// Paisaje interactivo- Mariposa volando por el fondo, al haer click en la flor cambia de color

//1) Clses:
Parque p; //(principal)
PImage parque;
PImage mariposa1;
PImage flor;

void setup () {
  size(600, 600);
  parque = loadImage("parque2.jpg");
  
// 2) Constructor 
  p= new Parque (300,300, 600,600); 
  
}

void draw (){
    background(150);
    p.mostrar ();
}
