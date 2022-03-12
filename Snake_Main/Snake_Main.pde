import java.util.Stack;
Snake s;
Food f;
int points;
int scale = 20;
void setup() {
  size(600, 620);
  s = new Snake();
  frameRate(15);
  f = new Food();
}

void draw() {
  background(51);
  fill(255);
  textSize(20);
  text("Points: " + points, 20, 20);
  s.update();
  s.show();
  if (s.eat(f)) {
    f = new Food();
    points++;
  }

  f.show();
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
