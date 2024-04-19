class Piso {
  private int numFilas;
  private int numColumnas;
  private int tamañoLadrilloX;
  private int tamañoLadrilloY;
  
  Piso() {
    numFilas = 4;
    numColumnas = width / 40;
    tamañoLadrilloX = 40;
    tamañoLadrilloY = 20;
  }
  
  void dibujar() {
    for (int fila = 0; fila < numFilas; fila++) {
      for (int col = 0; col < numColumnas; col++) {
        if (fila % 2 == 0) {
          if (col % 2 == 0) {
            fill(100, 50, 50);
          } else {
            fill(120, 60, 60);
          }
        } else {
          if (col % 2 == 0) {
            fill(120, 60, 60);
          } else {
            fill(100, 50, 50);
          }
        }
        rect(col * tamañoLadrilloX, height - (fila + 1) * tamañoLadrilloY, tamañoLadrilloX, tamañoLadrilloY);
      }
    }
  }
}
