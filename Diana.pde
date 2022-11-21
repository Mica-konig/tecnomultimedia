class Diana{
  void dibujar(){
    int c = 0;
  for (int d= 150; d>0; d-=10){
    c++;
    if(c%2==0){
      fill(255);
    }else{
     fill(255,0,0);}
    
    ellipse (80,80,d,d);
    
    for (int d1= 150; d1>0; d1-=10){
    ellipse (90,350,d1,d1);
    c++;
    if(c%2==0){
      fill(255);
    }else{
     fill(255,0,0);}

    
    for (int d2= 150; d2>0; d2-=10){
    ellipse (290,80,d2,d2);
    
        for (int d3= 150; d3>0; d3-=10){
    ellipse (300,90,d3,d3);
}
}}
    }
}
}
