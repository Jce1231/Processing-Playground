Snake s;

int scale = 20;
void setup() {
  size(600, 600);
  s = new Snake();
  frameRate(30);
}

void draw() {
  background(51);
  s.update();
  s.show();
}


void keyPressed() {
  if (keyCode == UP) {
    s.direct(0, -1);
  } else if (keyCode == DOWN) {
    s.direct(0, 1);
  } else if (keyCode == RIGHT) {
    s.direct(1, 0);
  } else if (keyCode == LEFT) {
    s.direct(-1, 0);
  }
}
