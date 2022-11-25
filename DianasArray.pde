class DianaArray { // Clase que controla el juego
  PImage inicio, reglas, ganas, pierdes; //imagenes
  String e="Inicio"; //Estados
  int puntos, suma; 
  int arreglo= 6; //cantidad de dianas
  int vel; //velocidad de las dianas
  Diana d[]; //clase dianas
  float []xd; //posicion de las dianas
  float []yd;
  boolean direccionX[], direccionY[];//direccion de las dianas
  
  DianaArray() {
    //inicios de arreglos
    d=new Diana [arreglo];
    xd= new float [arreglo];
    yd= new float [arreglo];
    direccionX= new boolean [arreglo];
    direccionY= new boolean [arreglo];
    vel=2;// valor de velocidad
    for (int i=0; i<arreglo; i++) {
      //valores de arreglos
      d[i]=new Diana();
      xd[i]= random(d[i].t1/2, width-d[i].t1/2);
      yd[i]= random(d[i].t1/2, height-d[i].t1/2);
      direccionX[i]= false;
      direccionY[i]= false;
    }
    
    //carga las imagenes
    inicio=loadImage("Inicio.jpg");
    reglas=loadImage("Reglas.jpg");
    ganas=loadImage("Gana.jpg");
    pierdes=loadImage("Pierde.jpg");
  }
  
  void Dibujar() {
    //estado Inicio -----> sigue en FuncionT()
    if (e.equals("Inicio")) {
      image(inicio, 0, 0);
    }
    //estado Reglas -----> sigue en Puntos()
    if (e.equals("Reglas")) {
      image(reglas, 0, 0);
    }
    //estado Juego
    if (e.equals("Juego")) {
      for (int i=0; i<arreglo; i++) {
        d[i].Dibujar(xd[i], yd[i]);
      }
      //texto puntos
      fill(0);
      textSize(25);
      text("Puntos:"+ puntos, width-150, 50);
      if (puntos>=25) {
        vel=4;
      }
      //Gana o pierde
      if (puntos>=30) {
        e="Gana";
      }
      if (puntos<=-30) {
        e="Pierde";
      }
    }
    if (e.equals("Gana")) {
      image(ganas, 0, 0);
    }
    if (e.equals("Pierde")) {
      image(pierdes, 0, 0);
    }
    if (e.equals("Creditos")) {
      fill(255);
      rect(0, 0, width, height);
      fill(0);
      text("Micaela Ronit Konig \n Legajo:91857/6", width/3, height/2);
      text("Pulsa ENTER para volver a jugar", width/3, height-height/4);
int c = 0;
  for (int d= 150; d>0; d-=10){
    c++;
    if(c%2==0){
      fill(255);
    }else{
     fill(255,0,0);}
    
    ellipse (400,200,d,d);
  }
    }
  }
  
  void Funcion() {
    //Solo en estado Juego
    if (e.equals("Juego")) {
      for (int i=0; i<arreglo; i++) {
        //Movimiento
        if (direccionX[i]) {
          xd[i]=xd[i]+vel;
        } else {
          xd[i]=xd[i]-vel;
        }
        if (direccionY[i]) {
          yd[i]=yd[i]+vel;
        } else {
          yd[i]=yd[i]-vel;
        }
        //Rebotes en paredes
        if (yd[i]<=d[i].t1/2) {
          direccionY[i]=true;
          Golpe.trigger();
        }
        if (yd[i]>=height-d[i].t1/2) {
          direccionY[i]=false;
          Golpe.trigger();
        }
        if (xd[i]<=d[i].t1/2) {
          direccionX[i]=true;
          Golpe.trigger();
        }
        if (xd[i]>=height-d[i].t1/2) {
          direccionX[i]=false;
          Golpe.trigger();
        }
      }
    }
  }
  
  void Puntos() {
    //Botones pantalla reglas
    if (e.equals("Reglas")) {
      if (mouseX<=250 && mouseX>=50 && mouseY<=height-50 && mouseY>=height-150) {
        e="Inicio";
      }
      if (mouseX<=width-50 && mouseX>=width-250 && mouseY<=height-50 && mouseY>=height-150) {
        Return();
        e="Juego";
      }
    }
    if (e.equals("Juego")) {

      //suma y resta puntos
      for (int i=0; i<arreglo; i++) {
        if (dist(mouseX, mouseY, xd[i], yd[i])<=d[i].t1/2) {
          puntos= puntos+ 6; // suma la diana que toca pero resta el resto
          Dardo.trigger();
        }
        if (dist(mouseX, mouseY, xd[i], yd[i])>=d[i].t1/2) {
          if (suma>6) {
            puntos=puntos-1; // resta 1 pero por cada diana
          }
          suma++;
        }
      }
    }
    if (e.equals("Creditos")) {
    }
    if (e.equals("Gana")) {
      if (mouseX<=width-50 && mouseX>=50 && mouseY<=height-50 && mouseY>=height-150) {
        e="Creditos";
      }
    }
    if (e.equals("Pierde")) {
      if (mouseX<=width-50 && mouseX>=50 && mouseY<=height-50 && mouseY>=height-150) {
        e="Creditos";
      }
    }
  }
  
  void FuncionT() {
    if (e.equals("Inicio")) {
      if (keyCode==ENTER) {
        e="Reglas";
      }
    }
    if (e.equals("Creditos")) {
      if (keyCode==ENTER) {
        e="Reglas";
      }
    }
  }
  
  void Return() {
    puntos=0;
    vel=2;
    for (int i=0; i<arreglo; i++) {
      xd[i]= random(d[i].t1/2, width-d[i].t1/2);
      yd[i]= random(d[i].t1/2, height-d[i].t1/2);
      direccionX[i]= false;
      direccionY[i]= false;
      suma=0;
    }
  }
}
