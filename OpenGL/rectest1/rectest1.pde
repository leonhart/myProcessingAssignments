void setup(){
  size(800,800);
}

int x1 = 100, y1 = 100, dx1 = 3, dy1 = 5;
int x2 = 700, y2 = 600, dx2 = 4, dy2 = 7;

void draw() {
  background(255,255,0);
  fill(0,0,255);
  ellipse(x1,y1,100,100);
  fill(192,192,192);
  ellipse(x2,y2,100,100);
  x1 += dx1;
  y1 += dy1;
  x2 += dx2;
  y2 += dy2;
  float d = abs(dist(x1,y1,x2,y2));
  if(x1 <= 50 || x1 >= width - 50){
    dx1 = -dx1;
  }
  if(y1 <= 50 || y1 >= height - 50){
    dy1 = -dy1;
  }
  
  if(x2 <= 50 || x2 >= width - 50){
    dx2 = -dx2;
  }
  if(y2 <= 50 || y2 >= height - 50){
    dy2 = -dy2;
  }
  
  if(d <= 100){
    dx1 = -dx1;
    dx2 = -dx2;
    dy1 = -dy1;
    dy2 = -dy2;
  }
}