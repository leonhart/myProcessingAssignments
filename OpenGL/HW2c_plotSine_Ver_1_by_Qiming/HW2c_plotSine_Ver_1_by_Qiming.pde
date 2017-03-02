/***************************************************
 Programmed by Qiming Zhou, ID 10415752
 Processing 3.2.3    macOS 10.12.2
 ***************************************************/

void setup() {
  size(800, 600);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}

void draw() { 
  translate(width/2, height/2);
  scale(width/4/PI, -height/2);
  strokeWeight(0.05);
  for (float t = -2*PI; t <= 2*PI; t += 0.01) {
    float y = sin(t);
    point(t, y);
  }
}