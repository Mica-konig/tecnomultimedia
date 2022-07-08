//https://youtu.be/r2ethBOPbqc
String estado;
float px, py, bx, by, ox, oy, oox, ooy;
int ptx, pty, bt, otx, oty;
boolean c[][]= new boolean[12][16], pelotaAire, x, yY, gana;

void setup() {
  size(600, 600);
  textSize( 35 );
  textAlign( CENTER, CENTER );
  estado= "Break the Brick";
  otx= 50;
  oty= 25;
  ptx= 100;
  pty=25;
  py=height-pty/2;
  px=width/2;
  bt=25;
  bx= width/2;
  by=height-pty- bt;
  for (int i=0; i<12; i++) {
    for (int j=0; j<16; j++) {
      c[i][j]= true;
    }
  }
}
void draw() {
  if ( estado.equals("Break the Brick") ) {
    background( 200, 100, 100 );
    text( estado, width/2, height/2 );
    text( "presione la letra A para comenzar", width/2, height/2+100 );
  }
  if ( estado.equals("Instrucciones") ) {
    background( 200, 100, 80 );
    text( estado, 300, 20 ); 
    text("Con las flechas moverás la barra", 300,70);
    text ("hacia los costados con el fin de", 300, 110);
    text ("recoger la pelota a su caída y", 300, 150);
    text ("hacerla subir de nuevo", width/2, 190 );
    text ("Objetivo:", width/2, 250);
    text ("Romper todos los ladrillos de la", width/2, 290);
    text ("parte superior para ganar.", width/2, 325);
    text ("Si perdiste, apreta el enter", width/2, 390);
    text ("para volver a jugar", width/2, 430);
    //boton con mouse over
    pushStyle();
    if ( dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
      fill( 255 );
    } else {
      fill( 0 );
    }
    rect( 400, 500, 50, 50 );
    textSize(20);
    fill (255);
    text ("PLAY", 425, 530);
    popStyle();
 
  }
  if (estado.equals("Juego")) {
    background(0);
    for (int i=0; i<12; i++) {
      for (int j=0; j<16; j++) {
        oox=i*otx+otx/2;
        ooy=j*oty+oty/2;
        if (j<=2) {
          fill(255, 0, 0);
        }
        if (j<=4 && j>2) {
          fill(0, 255, 0);
        }
        if (j>4 && j<=6) {
          fill(0, 0, 255);
        }
        if (j>7 && j<=8){
          fill (30,90,50);
        }
        if (j>10 && j<=12){
          fill (100,20,80);
        }
        if (j>13 && j<=16){
          fill (30,30, 100);
        }
        if (c[i][j]) {
          Objetivo(oox, ooy );
        }
        if (bx<=oox+otx/2 && bx>=oox-otx/2 && by>= ooy+oty/2 && by<=ooy+oty/2+5 && c[i][j]) {
          c[i][j]=false;
          yY=true;
        }
        if (mousePressed) {
          if (mouseX<=oox+otx/2 && mouseX>=oox-otx/2 && mouseY>= ooy+oty/2 && mouseY<=ooy+oty/2+5 && c[i][j]) {
            c[i][j]=false;
          }
        }
        if (c[0][0]==false) {
          gana=true;
        }
        if (gana && by<=0+bt) {
          estado="Ganaste";
        }
      }
    }
    Personaje();
    Bola();
  }
  if (estado.equals("Perdiste")) {
    background( 200, 100, 80 );
    text( "Perdiste", width/2, height/2 );
    Reinicio();
  }
  if (estado.equals("Ganaste")) {
    background( 200, 100, 80 );
    text( "Ganaste", width/2, height/2 );
    Reinicio();
  }
  //println(mouseX, mouseY,estado);
}
     
void keyPressed() {
  if ( estado.equals("Break the Brick") && key == 'a' ) {
    estado = "Instrucciones";
  }
  if ( estado.equals("Juego")) {
    if (keyCode==RIGHT) {
      px= px+3;
    }
    if (keyCode==LEFT) {
      px= px-3;
    }
  }
  if ( estado.equals("Perdiste")) {
    if (keyCode==ENTER) {
      estado="Break the Brick";
    }
  }
  if ( estado.equals("Ganaste")) {
    if (keyCode==ENTER) {
      estado="Break the Brick";
    }
  }
}
void mousePressed() {
  if ( estado.equals("Instrucciones") && mouseX>=400 && mouseX<=450 && mouseY>=500 &&mouseY<= 600) {
    estado = "Juego";
  }
  if ( estado.equals("Juego")) {
    pelotaAire=true;
  }
}
void Personaje() {
  pushMatrix();
  rectMode(CENTER);
  fill(255);
  rect(px, py, ptx, pty);
  popMatrix();
  if (px<=ptx/2) {
    px=ptx/2;
  }
  if (px>=width-ptx/2) {
    px=width-ptx/2;
  }
}
void Bola() {
  fill(255);
  ellipse(bx, by, bt, bt );
  if (pelotaAire) {
    if (x) {
      bx++;
    } else {
      bx--;
    }
    if (yY) {
      by++;
    } else {
      by--;
    }
    if (bx<=0) {
      x=true;
    }
    if (bx>=width-bt/2) {
      x=false;
    }
    if (by<=0) {
      yY=true;
    }
  }
  if (bx<=px+ptx/2 && bx>=px-ptx/2 && by>=py-pty/2-bt/2) {
    yY=false;
    if (bx>px) {
      x=true;
    }
    if (bx<px) {
      x=false;
    }
  }
  if (by>=height) {
    estado= "Perdiste";
  }
}
void Objetivo(float cx, float cy) {
  ox=cx;
  oy=cy;
  rect(ox, oy, otx, oty);
  textSize(30);
  text("Micaela Ronit Konig 91857/6", 300, 100);
  text("Karen Miguel 91513/3", 300,150);
}
void Reinicio() {
  py=height-pty/2;
  px=width/2;
  bx= width/2;
  by=height-pty- bt;
  gana=false;
  for (int i=0; i<12; i++) {
    for (int j=0; j<16; j++) {
      c[i][j]= true;
    }
  }
  }
