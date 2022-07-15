//https://youtu.be/r2ethBOPbqc
String estado;
float px, py, bx, by, ox, oy, oox, ooy;
int ptx, pty, bt, otx, oty;
boolean c[][]= new boolean[12][16], pelotaAire, x, yY, gana;
void setup() {
  size(600, 600);
  textSize( 35 );
  textAlign( CENTER, CENTER );
  estado= "BREAK THE BRICK";
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
  if ( estado.equals("BREAK THE BRICK") ) {
      textSize (50);
    background( 255, 100, 100 );
    text( estado, width/2, height/2 );
     textSize (20);
    text( "presione la letra A para comenzar", width/2, height/2+60 );
     
  }
  if ( estado.equals("Créditos") ) {
      background( 255, 100, 100 );
        textSize (30);
     text( "TECNOLOGÍA MULTIMEDIAL", 300, 100 );
    textSize (20);
    text( "Integrantes: \n MIGUEL, Karen 91513/3 \n RONIT KONIG, Micaela 91857/6", 300, 230 );
    text( "\n Matías Jauregui Lorda \n Comisión 2", 300, 350 );
    text( "Presiona ENTER para continuar", 300, 500 );
    
  
  }
  if ( estado.equals("INSTRUCCIONES DEL JUEGO") ) {
    background( 343, 83, 99 );
    text( estado, width/2, height/2 ); 
    textSize( 20);
    text("\n Con las flechas moverás la barra hacia los  \n costados con el fin de recoger la pelota \n a su caída y hacerla subir nuevamente", width/2, height/2+75 );
    textSize( 35 );
    //botón con mouse over
    pushStyle();
    if ( dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
      fill( 255 );
    } else {
      fill( 0 );
    }
    fill (255);
    rect( 400, 500, 50, 50 );
    textSize(20);
    fill (255);
    fill (343, 83, 99);
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
          fill(255, 41, 41);
        }
        if (j<=4 && j>2) {
          fill(250, 61, 216);
        }
        if (j>4 && j<=6) {
          fill(22, 247, 234);
        }
        if (j>7 && j<=8) {
          fill (18, 126, 255);
        }
        if (j>10 && j<=12) {
          fill (227, 250, 58);
        }
        if (j>13 && j<=16) {
          fill (249, 88, 250);
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
    background( 252, 54, 57 );
    text( "Perdiste", width/2, height/2 );
    Reinicio();
  }
  if (estado.equals("Ganaste")) {
    background( 55, 247, 88 );
    text( "Ganaste", width/2, height/2 );
    Reinicio();
  }
}
void keyPressed() {
  if ( estado.equals("BREAK THE BRICK") && key == 'a' ) {
    estado = "Créditos";
  }
  if ( estado.equals("Créditos") && key == ENTER ) {
    estado = "INSTRUCCIONES DEL JUEGO";
  }
  if ( estado.equals("Juego")) {
    if (keyCode==RIGHT) {
      px= px+5;
    }
    if (keyCode==LEFT) {
      px= px-5;
    }
  }
  if ( estado.equals("Perdiste")) {
    if (keyCode==ENTER) {
      estado="BREAK THE BRICK";
    }
  }
  if ( estado.equals("Ganaste")) {
    if (keyCode==ENTER) {
      estado="BREAK THE BRICK";
    }
  }
}
void mousePressed() {
  if ( estado.equals("INSTRUCCIONES DEL JUEGO") && mouseX>=400 && mouseX<=450 && mouseY>=500 &&mouseY<= 600) {
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
      bx=bx+2;
    } else {
      bx=bx-2;
    }
    if (yY) {
      by=by+2;
    } else {
      by=by-2;
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
