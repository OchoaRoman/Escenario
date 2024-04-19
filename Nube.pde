class Nube {
  private PVector posicion;
  private float velocidad;
  private int tamaño;
  
  Nube(float x, float y) {
    posicion = new PVector(x, y);
    velocidad = random(1, 3);
    tamaño = (int) random(50, 100);
  }
  
  void dibujar() {
    noStroke();
    fill(255, 200);
    ellipse(posicion.x, posicion.y, tamaño, tamaño);
  }
  
  void mover() {
    posicion.x -= velocidad;
    if (posicion.x < -tamaño) {
      posicion.x = width + tamaño;
      posicion.y = random(height/2);
    }
  }
}
