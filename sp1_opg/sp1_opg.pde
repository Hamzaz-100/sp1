int brushSize = 10; 
color brushColor; 

void setup() {
  size(400, 400);
  background(220);
  brushColor = color(0); 
  frameRate(60); 

void draw() {
  // Tegn cirkler, når musen er nede
  if (mousePressed) {
    fill(brushColor);
    noStroke();
    ellipse(mouseX, mouseY, brushSize, brushSize);
  }
}

void keyPressed() {

  if (key == 'r' || key == 'R') {
    brushColor = color(255, 0, 0); // Rød
  } else if (key == 'g' || key == 'G') {
    brushColor = color(0, 255, 0); // Grøn
  } else if (key == 'b' || key == 'B') {
    brushColor = color(0, 0, 255); // Blå
  }
}

void mouseWheel(MouseEvent event) {
  brushSize += event.getCount();
  if (brushSize < 1) {
    brushSize = 1;
  }
}

void mouseReleased() {
  brushColor = color(0);
}
