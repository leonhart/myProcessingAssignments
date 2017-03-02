/***************************************************
Programmed by Qiming Zhou, ID 10415752
Processing 3.2.3    macOS 10.12.2
I will try to simplify the code in the next version
***************************************************/

void setup() {
  size(800,800);
}

int x = 0, y = 0, dx = 10, dy = 0; //<>//

void draw() {
  background(255,255,0); //<>//
  fill(0,0,255); //<>//
  rect(x,y,100,100); //<>//
  x += dx;
  y += dy;
  if(x >= width - 100){
    dx = 0;
    dy = 10;
  }
  if(y >= height - 100){
    dx = -10;
    dy = 0;
  }
  if(x <= 0){
    dx = 0;
    dy = -10;
  }
  if(y <= 0 && x <= width - 100){
    dx = 10;
    dy = 0;
  }
} //<>//