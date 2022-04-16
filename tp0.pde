//se ejecuta una sola vez
void setup(){
  size(400,400); //tamaño pantalla
  background(175,15, 100); //fondo
  textSize(20);
  text("TP#0",300, 350); //texto
}

//se ejecuta x cantidad de veces
void draw(){
  //sol
  fill(255, 255, 0);
  ellipse(20,20, 120, 120);
  
  //brazo izquierdo
  stroke(1);
  strokeWeight(2);
  line(180, 190, 100, 130);
  strokeWeight(1);
  
  //brazo derecho
  strokeWeight(2);
  line(220, 180, 300, 130);
  
    //cuerpo del muñeco de nieve
  noStroke();
  fill(250);
  ellipse(200, 300, 150, 150); //parte de abajo
  ellipse(200, 200, 120, 120); //parte del medio
  fill(245);
  ellipse(200, 120, 90, 90); //parte de arriba
  fill(240);
  stroke(1);
  
    //ojos
  fill(100);
  circle(190,110,10); //ojo izquierdo
  circle(210,110,10); //ojo derecho
  
  //nariz
  fill(255, 90, 40);
  triangle(175, 130, 195, 130, 195, 140);
  
  //botones
  fill(0);
  ellipse(200, 170, 10, 10);
  ellipse(200, 200, 10, 10 );
  ellipse(200, 230, 10, 10 );
  noFill();
  
  //sombrero
  fill(0);
  ellipse(200, 80, 90, 15);
  rect(180, 20, 40, 50 );
  ellipse(200, 20, 40, 10);
}
