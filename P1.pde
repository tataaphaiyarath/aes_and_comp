int y = 100;
int y2 = 100;
int y3 = 100;
int y4 = 100;
int x = 100;
int x2 = 100;
int x3 = 100;
int x4 = 100;
int value = 0;
int value2 = 255;

void setup() {
  size(600, 600, P3D);
  stroke(255);
  strokeWeight(2);
  frameRate(30);
}

void draw() {
  background(0);
  stroke(value2, 200, value, 150);
  
  if (mousePressed) {
    fill(0);
  } else {
    fill(255, value2, value);
  }
  ellipse(mouseX, mouseY, 80, 80);
  
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  fill(225, value, value2, 155);
  bezier(0, y, 150, 150, 450, 450, width, y);
  line(y, 0, width, y);
  line(0, y, width, 0);
  line(y, 0, y, width);
  line(0, y, y, width);
  line(y, 0, 0, width);
  line(0, y, 0, width);
  line(width, width, y, 0);
  line(y, width, width, y);
  line(width, width, width, y);
  line(mouseX, mouseY, pmouseX, pmouseY);

  stroke(value2, 100, value, 150);

  x = x + 1;
  if (x > height) {
    x = 0;
  }
  fill(0, value, value2, 150);
  bezier(0, x, 150, 150, 450, 450, width, x);
  line(x, 0, width, x);
  line(0, x, width, 0);
  line(x, 0, x, width);
  line(0, x, x, width);
  line(x, 0, 0, width);
  line(0, x, 0, width);
  line(width, width, x, 0);
  line(x, width, width, x);
  line(width, width, width, x);
  
  stroke(150, value, value2, 150);
  
  y2 = y2 - 2;
  if (y2 < 0) {
    y2 = height;
  }
  fill(125, value, value2, 200);
  bezier(0, y2, 450, 150, 450, 150, width, y2);
  
  stroke(150, value, value2, 150);
  
  y4 = y4 - 3;
  if (y4 < 0) {
    y4 = height;
  }
  fill(145, value, value2, 200);
  bezier(0, y4, 150, 450, 150, 450, width, y4);
  
  stroke(value, value2, 50, 150);
  
  x4 = x4 + 3;
  if (x4 > height) {
    x4 = 0;
  }
  fill(30, value, value2, 189);
  bezier(0, x4, 150, 450, 150, 450, width, x4);
  
  stroke(value, value2, 50, 150);
  
  x2 = x2 + 2;
  if (x2 > height) {
    x2 = 0;
  }
  fill(65, value, value2, 250);
  bezier(0, x2, 450, 150, 450, 150, width, x2);

  translate(width/2, height/2, 75); 
  rotateY(y/3);
  rotateX(x/3);
  noFill();
  box(150);
  
  stroke(value2, 30, 50, 150);
  
  translate(width/3, height/3, 0); 
  rotateY(y/2);
  rotateX(x/2);
  noFill();
  box(100);
  
  stroke(100, value, 30, 150);
  
  translate(width/5, height/5, 5); 
  rotateY(y/4);
  rotateX(x/4);
  noFill();
  box(50);
  
  stroke(150, value, value2, 150);
}

void mouseClicked() {
  if (value == 0) {
    value = 255;
  }
  else {
    value = 0;
  }
  
  if (value2 == 255) {
    value2 = 0;
  }
  else {
    value2 = 255;
  }
}