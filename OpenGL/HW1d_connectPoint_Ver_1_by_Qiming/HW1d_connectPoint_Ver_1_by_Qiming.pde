/***************************************************
Programmed by Qiming Zhou, ID 10415752
Processing 3.2.3    macOS 10.12.2
you can change the value of n to decide how many dots you want to skip
***************************************************/

void setup() {
  size(800,800);
}

int n = 75;

void draw() {
  for(int y = n; y <= height ; y += n){
    for(int x = n; x <= width ; x += n){
      line(x,0,0,y);
    }
  }
}