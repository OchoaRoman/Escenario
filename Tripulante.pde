class Tripulante {
  PVector posicion;
  private PImage imagen;
  private int tamaño;
  Tripulante(){
    imagen = loadImage("tripulante.png");
    tamaño = 75; 
    posicion = new PVector(width/2, height/2); 
  }
  
  void dibujar(){
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, tamaño, tamaño);
  }
}
