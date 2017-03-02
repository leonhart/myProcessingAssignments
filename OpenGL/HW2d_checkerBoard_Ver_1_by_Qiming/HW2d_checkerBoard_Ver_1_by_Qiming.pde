/***************************************************  //<>//
 Programmed by Qiming Zhou, ID 10415752
 Processing 3.2.3    macOS 10.12.2
 ***************************************************/


int x = 0, y = 0, X = -255, Y = -255, n = 0;


void board() {
  for (y = 0; y <= height - 100; y += 100) {
    for (x = 0; x <= width - 100; x += 100) {
      if (x % 200 == 0 && y % 200 == 0)
        fill(0);
      else if (x % 200 == 100 && y % 200 == 100)
        fill(0);
      else fill(255);
      rect(x, y, width/8, height/8);
    }
  }
}


void setup() {
  size(800, 800);
  board();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    X = mouseX / 100 * 100 + 50;
    Y = mouseY / 100 * 100 + 50;
    n++;
  } else board();
}

void draw() {
  noStroke();
  if (n % 2 == 0) 
    fill(255, 0, 0);
  else fill(255, 255, 0);
  ellipse(X, Y, 80, 80);
}