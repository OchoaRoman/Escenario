class Impostor {
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  private int tamaño;
  public Impostor() {
    imagen = loadImage("impostor.png");
    tamaño = 75;
    posicion = new PVector(0, height/2);
    velocidad = new PVector(3, 0);
  }
  
  public void dibujar() {
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, tamaño, tamaño);
  }
  
  public void mover() {
    posicion.add(velocidad);
    if (posicion.x < 0 || posicion.x > width) {
      velocidad.x *= -1;
    }
  }
}
