class Fondo {
  private PImage imagen;
  
  // CONSTRUCTOR 
  Fondo(){
    imagen = loadImage("fondo.jpg"); // Ajusta el nombre de la imagen de fondo
  }
  
  void dibujar(){
    imageMode(CORNER);
    image(imagen, 0, 0, width, height); // Dibuja la imagen de fondo en la esquina superior izquierda
  }
}
