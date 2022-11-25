class Diana {
  int t1, t2, t3, t4;
  Diana() {
    t1=100;
    t2=75;
    t3=50;
    t4=25;
  }
  
  void Dibujar(float dx, float dy) {
    noStroke();
    fill(255, 0, 0);
    ellipse(dx, dy, t1, t1);
    fill(255);
    ellipse(dx, dy, t2, t2);
    fill(255, 0, 0);
    ellipse(dx, dy, t3, t3);
    fill(255);
    ellipse(dx, dy, t4, t4);
  }
}
