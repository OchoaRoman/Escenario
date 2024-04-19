class Tripulante {
  PVector posicion;
  private PImage imagen;
  private int tamano;
  
  // CONSTRUCTOR 
  Tripulante(){
    imagen = loadImage("tripulante.png");
    tamano = 50; // Ajusta el tamaño del tripulante según tus necesidades
    posicion = new PVector(width/2, height/2); // Comienza en el centro del lienzo
  }
  
  void dibujar(){
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, tamano, tamano);
  }
}
