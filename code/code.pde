int xPiuma=900;
int xStrega=160;
Trasfigurabile piuma;
Protagonista strega;


class Trasfigurabile{
  PShape piuma;
  Trasfigurabile(String filenamePiuma){
     
 piuma=loadShape(filenamePiuma);
 piuma.setFill(color(#1454F2));
  }
  void disegnaPiuma(int x,int y){
    shape(piuma,x,y);
  }
  
}

class Protagonista{
  PShape strega;
  Protagonista(String filenameStrega){
  strega=loadShape(filenameStrega);
  strega.setFill(color(#4D2D09));
    strega.rotateX(radians(180));
  
}
void disegna(int  x, int y){
 shape(strega,x,y);
}

}

void setup() {
  fullScreen(P3D);
  strega=new Protagonista("witch.obj");
  piuma=new Trasfigurabile("quill.obj");
  
}
  


void draw() {
  background(#87D6FC);
  lights();
  strega.disegna(xStrega,height/2);
  piuma.disegnaPiuma(xPiuma,height/2);
  
  
  if(xPiuma>xStrega){
    xPiuma-=5;
  }
}
