class Impostor {
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  private int tamano;
  
  public Impostor() {
    imagen = loadImage("impostor.png");
    tamano = 50; // Ajusta el tamaño del impostor según tus necesidades
    posicion = new PVector(0, height/2); // Comienza desde la izquierda
    velocidad = new PVector(3, 0); // Velocidad inicial hacia la derecha
  }
  
  public void dibujar() {
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, tamano, tamano);
  }
  
  public void mover() {
    // Mueve el impostor
    posicion.add(velocidad);
    
    // Verifica si el impostor ha alcanzado los límites del lienzo
    if (posicion.x < 0 || posicion.x > width) {
      // Si alcanza el borde izquierdo o derecho, invierte la dirección horizontal
      velocidad.x *= -1;
    }
  }
}
