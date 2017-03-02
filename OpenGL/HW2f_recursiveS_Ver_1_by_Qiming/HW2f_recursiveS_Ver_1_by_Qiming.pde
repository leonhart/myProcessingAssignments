/*************************************************** 
 Programmed by Qiming Zhou, ID 10415752
 Processing 3.2.3    macOS 10.12.2
 ***************************************************/

void setup() {
  size(800, 800);
}

void sierpinski(int x1, int y1, int x2, int y2, int x3, int y3, int level) { //<>//
  if (level == 1) //<>//
    triangle(x1, y1, x2, y2, x3, y3); //<>//
  else { //<>//
    sierpinski(x1, y1, (x1+x2)/2, (y1+y2)/2, (x1+x3)/2, (y1+y3)/2, level-1); //<>//
    sierpinski(x2, y2, (x1+x2)/2, (y1+y2)/2, (x2+x3)/2, (y2+y3)/2, level-1); //<>//
    sierpinski(x3, y3, (x1+x3)/2, (y1+y3)/2, (x2+x3)/2, (y2+y3)/2, level-1); //<>//
  } //<>//
} //<>//

void draw() { //<>//
  sierpinski(400, 0, 0, 800, 800, 800, 5); //<>//
} //<>//

int n=1;
void mouseClicked() {
  n++;
  if (n >= 7)
    n = 1;
}