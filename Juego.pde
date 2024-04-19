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
  nubes = new Nube[10];
  for (int i = 0; i < nubes.length; i++) {
    nubes[i] = new Nube(random(width), random(height/2));
  }
}

void draw() {
  fondo.dibujar();
  piso.dibujar();
  tripulante.dibujar();
  impostor.dibujar();
  actualizarPosicionImpostor();
  
  for (int i = 0; i < nubes.length; i++) {
    nubes[i].dibujar();
    nubes[i].mover();
  }
}

void mouseMoved() {
  tripulante.posicion.x = mouseX;
  tripulante.posicion.y = mouseY;
}

void actualizarPosicionImpostor() {
  impostor.mover();
}
