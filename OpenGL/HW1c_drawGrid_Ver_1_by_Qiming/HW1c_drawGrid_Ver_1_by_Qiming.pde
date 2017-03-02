/***************************************************
Programmed by Qiming Zhou, ID 10415752
Processing 3.2.3    macOS 10.12.2

***************************************************/


void setup() {
  size(800,800);
}
int n = 8;
void draw() {
  background(255,255,0);
  for(int i = 1; i <= n; i++){
        line(width/n*i , 0 , width/n*i , height);
        line(0 , height/n*i , width , height/n*i);
  }
}