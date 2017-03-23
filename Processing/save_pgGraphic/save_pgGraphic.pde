PGraphics pgEscala;

void setup() {
  size(400, 400);
  pgEscala = createGraphics(12000, 12000);
  noLoop();
}

void draw() {

  pgEscala.beginDraw();
  for (int i=0; i<250; i++) {
    pgEscala.rect(random(pgEscala.width), random(pgEscala.height), 50, 50);
  }
  pgEscala.save("####.tif");
  pgEscala.endDraw(); 

  image(pgEscala, 0, 0, width, height);
}