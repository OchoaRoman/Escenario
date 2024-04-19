class Piso {
  private int numFilas;
  private int numColumnas;
  private int tamanoLadrilloX;
  private int tamanoLadrilloY;
  
  Piso() {
    numFilas = 4; // Número de filas de ladrillos
    numColumnas = width / 40; // Número de columnas de ladrillos (ajustar según el ancho de la ventana)
    tamanoLadrilloX = 40; // Ancho del ladrillo
    tamanoLadrilloY = 20; // Altura del ladrillo
  }
  
  void dibujar() {
    // Dibujar el piso de ladrillos
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
        rect(col * tamanoLadrilloX, height - (fila + 1) * tamanoLadrilloY, tamanoLadrilloX, tamanoLadrilloY);
      }
    }
  }
}
