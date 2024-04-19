class Nube {
  private PVector posicion;
  private float velocidad;
  private int tamano;
  
  Nube(float x, float y) {
    posicion = new PVector(x, y);
    velocidad = random(1, 3); // Velocidad aleatoria
    tamano = (int) random(50, 100); // Tamaño aleatorio
  }
  
  void dibujar() {
    noStroke();
    fill(255, 200);
    ellipse(posicion.x, posicion.y, tamano, tamano);
  }
  
  void mover() {
    // Mover la nube hacia la izquierda
    posicion.x -= velocidad;
    
    // Si la nube sale del lienzo, reposicionarla al otro lado
    if (posicion.x < -tamano) {
      posicion.x = width + tamano;
      posicion.y = random(height/2); // Reposicionar en una posición vertical aleatoria
    }
  }
}
