//Declaracion de variables
PFont font;
int altoRectangulos;
PImage alegria;
String texto;
String texto2;
String texto3;
String texto4;
float T = height, S= 2.5;
float y=50.0, vel=10.0, radio=30.0;

float circulox = 100, circuloy = 50, tamanio = 50;
float circulo2x = 150, circulo2y = 50, tamanio2 = 60;
float circulo3x =400, circulo3y = -800, tamanio3 = 20;
float circulo4x = 200, circulo4y = -400, tamanio4 = 30;
float circulo5x = 300, circulo5y = -100, tamanio5 = 70;
float circulo6x = 500, circulo6y = -500, tamanio6 = 40;
float circulo7x= 600, circulo7y= -100, tamanio7= 40;
float circulo8x= 50, circulo8y= -200, tamanio8= 60;
float circulo9x= 230, circulo9y= 20, tamanio9= 30;
float circulo10x= 350, circulo10y= 300, tamanio10= 10;
float circulo11x= 470, circulo11y = 40, tamanio11= 25;
float circulo12x= -120, circulo12y= 280, tamanio12= 30;
float circulo13x= -470, circulo13y= 400, tamanio13= 50;
float circulo14x=276, circulo14y= -660, tamanio14= 38;
float circulo15x= 168, circulo15y= 229, tamanio15= 12;
float circulo16x= 64, circulo16y= 1, tamanio16=35;
float circulo17x= 355, circulo17y= 550, tamanio17= 40;
float circulo18x=85, circulo18y=-350, tamanio18=20 ;
float circulo19x= 170, circulo19y= -430, tamanio19=15 ;
float circulo20x= 210, circulo20y= 299, tamanio20=32 ;
void setup() {
  size(600, 600);
  background(0, 10, 150);
  altoRectangulos=600;
  alegria=loadImage("alegria.png");
}

void draw() {
  if (frameCount >0 && frameCount <149)
    background(0, 10, 150);
  fill(20, 100, 240);
  noStroke();
  ellipse(300, 550, 600, 100);
  fill(255);
  font=loadFont("Felix.vlw");
  textFont(font);
  textSize(60);
  textAlign(CENTER, CENTER);
  text("INTENSA", random(250, 260), 300);
  text("MENTE", random(250, 260), 350);
  println(frameCount, frameCount/60 );
  if ( frameCount > 150 && frameCount< 400 ) {  
    background (0);
    noStroke();
    fill(0, 255, 0);
    rect(0, 0, 200, altoRectangulos);
    fill(255, 0, 0);
    rect(120, 0, 300, altoRectangulos);
    fill(255, 255, 0);
    rect(240, 0, 400, altoRectangulos);
    image(alegria, 220, 200, 150, 300);
    fill(128, 0, 220);
    rect(360, 0, 500, altoRectangulos);
    fill(0, 0, 255);
    rect(480, 0, 600, altoRectangulos);
  } else if (frameCount > 350 && frameCount < 2000 ) {
    textSize(30);
    textAlign(CENTER);
    texto= "RONNIE DEL CARMEN";
    background (0);
    T = T - 1.5;
    background (0);
    textSize(50 + S);
    text(texto, width/2, height + T);
    textSize (40);
    texto2= "PETE DOCTER";
    text (texto2, 300, 650 + T);
    textSize(30);
    texto3="BERT BERRY";
    text (texto3, 300, 850 + T);
    textSize(30);
    texto4= "JOSH COOLEY";
    text (texto4, 300, 1000 + T);
    //Circulos
    fill (255, 0, 0);
    circle (circulox, circuloy, tamanio);
    circuloy = circuloy + 1;

    fill (0, 255, 0);
    circle (circulo2x, circulo2y, tamanio2);
    circulo2y = circulo2y + 2;

    fill (0, 0, 255);
    circle (circulo3x, circulo3y, tamanio3);
    circulo3y = circulo3y + 2;

    fill (40, 40, 40);
    circle (circulo4x, circulo4y, tamanio4);
    circulo4y= circulo4y + 1;

    fill (200, 200, 90);
    circle (circulo5x, circulo5y, tamanio5);
    circulo5y= circulo5y + 1;

    fill (0, 100, 100);
    circle (circulo6x, circulo6y, tamanio6);
    circulo6y= circulo6y + 2;

    fill (80, 60, 70);
    circle (circulo7x, circulo7y, tamanio7);
    circulo7y= circulo7y + 1;

    fill(200, 200, 50);
    circle ( circulo8x, circulo8y, tamanio8);
    circulo8y= circulo8x + 2;

    fill( 90, 38, 60);
    circle( circulo9x, circulo9y, tamanio9);
    circulo9y= circulo9y + 1;

    fill(20, 150, 150);
    circle (circulo10x, circulo10y, tamanio10);
    circulo10y= circulo10y + 1;

    fill(200, 200, 200);
    circle (circulo11x, circulo11y, tamanio11);
    circulo11y= circulo11y +0.5;

    fill(5, 200, 140);
    circle (circulo12x, circulo12y, tamanio12);
    circulo12y = circulo12y +1;

    fill(190, 225, 50);
    circle (circulo13x, circulo13y, tamanio13);
    circulo13y = circulo13y + 1;

    fill(65, 27, 80);
    circle (circulo14x, circulo14y, tamanio14);
    circulo14y= circulo14y +1;

    fill (55, 55, 55);
    circle (circulo15x, circulo15y, tamanio15);
    circulo15y =circulo15y + 1;

    fill(250, 250, 35);
    circle (circulo16x, circulo16y, tamanio16);
    circulo16y = circulo16y + 1;

    fill(50, 190, 40);
    circle (circulo17x, circulo17y, tamanio17);
    circulo17y =circulo17y + 1;

    fill(35, 35, 35);
    circle (circulo18x, circulo18y, tamanio18);
    circulo18y= circulo18y + 2;

    fill(90, 40, 100);
    circle (circulo19x, circulo19y, tamanio19);
    circulo19y =circulo19y + 1;

    fill (68, 27, 16);
    circle (circulo20x, circulo20y, tamanio20);
    circulo20y = circulo20y + 1;
  }
}
