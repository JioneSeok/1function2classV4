class Siha {
  Siha() { }
  Siha(float p, float q, float r) {
    x = p;
    y = q;
    d = r;
    xx = random(4);
    if (xx<1) colourOption = 0;
    else if (xx<2) colourOption = 1;
    else if (xx<3) colourOption = 2;
    else colourOption = 3;
    
    vx = random(-3,3);
    vy = random(-4,4);
  }
  
  float x, y, d, xx, vx, vy;
  int colourOption;

  void Life() {
    if (colourOption == 0) fill(0,0,255);
    else if (colourOption == 1) fill(0,255,0);
    else if (colourOption == 2) fill(255,255,0);
    else fill(0,255,255);
    ellipse(x, y, d, d/3*2);
    circle(x-d/5, y-d/6, d/5);
    arc(x+d/5, y-d/6, d/5, d/5, PI, 2*PI);
    arc(x, y, d*2/3, d/5, 0, PI);
  }
  
  void act() {
    x += vx;
    y += vy;
    if (x > width) vx *= -1;
    if (x < 0) vx *= -1;
    if (y > height) vy *= -1;
    if (y < 0) vy *= -1;
  }
  
}
   
Siha [] aa;
void setup() {
  size(600, 300);
  aa = new Siha[3];
  for (int i = 0; i < 3; i++) {
    aa[i] = new Siha(100+150*i, 100+50*i, 100+50*i);
  }
}

void draw() {
  background(0, 255, 255);
  for (int i = 0; i < 3; i++) {
    aa[i].Life();
    aa[i].act();
  }
}
