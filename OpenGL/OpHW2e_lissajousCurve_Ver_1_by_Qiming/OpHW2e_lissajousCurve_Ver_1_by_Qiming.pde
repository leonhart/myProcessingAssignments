/***************************************************
Programmed by Qiming Zhou, ID 10415752
Processing 3.2.3    macOS 10.12.2
I set the values I think is pretty beautiful
***************************************************/

void setup() {
  size(800,800);
  float t = 0, x = 0, y = 0;
  float dt = 0.005, temp_x = 0, temp_y = 0;
  translate(width/2, height/2);
  scale(200,200);
  for(t = 0; t <= TWO_PI; t += dt){
    x = cos(13*t);
    y = cos(15*t);
    strokeWeight(0.01);
    line(temp_x, temp_y, x, y);
    temp_x = x;
    temp_y = y;
  }
}