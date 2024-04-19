private Tripulante tripulante;
private Impostor impostor;
private Fondo fondo;
private Piso piso;
private Nube[] nubes;

void setup() {
  size(800, 600);

  tripulante = new Tripulante();
  impostor = new Impostor();
  fondo = new Fondo();
  piso = new Piso();
  
  // Crear un arreglo de nubes
  nubes = new Nube[10];
  for (int i = 0; i < nubes.length; i++) {
    nubes[i] = new Nube(random(width), random(height/2));
  }
}

void draw() {
  fondo.dibujar(); // Dibuja el fondo primero
  piso.dibujar(); // Dibuja el piso
  tripulante.dibujar();
  impostor.dibujar();
  actualizarPosicionImpostor();
  
  // Dibujar y mover nubes
  for (int i = 0; i < nubes.length; i++) {
    nubes[i].dibujar();
    nubes[i].mover();
  }
}

void mouseMoved() {
  // Centra el tripulante en el cursor del mouse
  tripulante.posicion.x = mouseX;
  tripulante.posicion.y = mouseY;
}

void actualizarPosicionImpostor() {
  impostor.mover();
}
