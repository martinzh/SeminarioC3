/*
Acá va otro método para grabar imagenes en mayor formato
 */

void setup() {
  size(500, 500);
  frameRate(10);
}

void draw() {
  background(255);
  smooth();
  strokeWeight(10);
  fill(255, 0, 0);
  ellipse(width/2, height/2, 200, 200);
  strokeWeight(1);
  fill(200);
  for (int i=0; i<250; i++) {
    rect(random(width), random(height), 50, 50);
  }
}

void keyPressed() {
  if (key == 's') {
    save("normal.png");
    saveHiRes(5); // cuantas veces mas grande?
    exit();
  }
}

void saveHiRes(int scaleFactor) {
  PGraphics hires = createGraphics(width*scaleFactor, height*scaleFactor, JAVA2D);
  beginRecord(hires); // comienza grabación en PGraphic
  hires.scale(scaleFactor);
  draw(); // llama a draw
  endRecord(); // termina grabación
  hires.save("hires.png"); // Salva archivo
}