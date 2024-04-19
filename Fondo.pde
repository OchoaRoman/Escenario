class Fondo {
  private PImage imagen;
  Fondo(){
    imagen = loadImage("fondo.jpg"); 
  }
  
  void dibujar(){
    imageMode(CORNER);
    image(imagen, 0, 0, width, height);
  }
}
