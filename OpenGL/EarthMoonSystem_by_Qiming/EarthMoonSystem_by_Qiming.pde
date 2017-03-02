PShape earth;
PShape moon;

void setup() {
  size(1600, 1000, P3D);
  PImage imgearth = loadImage("earthmap1k.jpg");
  PImage imgmoon = loadImage("moonmap1k.jpg");
  noStroke();
  sphereDetail(20);
  earth = createShape(SPHERE, 200);
  earth.setTexture(imgearth);
  moon = createShape(SPHERE, 50);
  moon.setTexture(imgmoon);
}

float earthRot = 0, moonRot = 0;
float earthOrbitAng = 0, moonOrbitAng = 0;

void draw() {
  background(0);
  translate(width/2, height/2, -500);
  rotateX(map(mouseX, 0, width, -PI, PI));

  pushMatrix();
  rotateY(earthOrbitAng);
  rotateY(earthRot);
  shape(earth);
  popMatrix();

  rotateY(0.43);
  rotateY(moonOrbitAng);
  translate(1000, 0);
  rotateY(-moonOrbitAng);
  rotateY(moonRot);
  shape(moon);

  earthRot += 0.1;
  moonRot += (0.1/28);
  moonOrbitAng = moonRot;
}