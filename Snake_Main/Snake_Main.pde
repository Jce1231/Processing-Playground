import java.util.Stack;
Snake s;
Food f;
int points;
int scale = 20;
boolean dead = false;
void setup() {
  size(600, 620);
  s = new Snake();
  frameRate(15);
  f = new Food();
}

void draw() {
  if (dead) {
    background(255, 0, 0);
    textSize(128);
    fill(125, 0, 255);
    text("You lose", 0, 160);
    text("Points: "+points, 0, 320);
  } else {
    background(51);
    fill(255);
    textSize(20);
    text("Points: " + points, 20, 20);
    s.update();
    s.death();
    s.show();
    if (s.eat(f)) {
      f = new Food();
      points++;
    }

    f.show();
  }
}


void keyPressed() {
  String prevKey = "";
  if (keyCode == UP && prevKey != "Down") {
    prevKey = "Up";
    s.direct(0, -1);
  } else if (keyCode == DOWN && prevKey != "Up") {
    prevKey = "Down";
    s.direct(0, 1);
  } else if (keyCode == RIGHT && prevKey != "Left") {
    prevKey = "Right";
    s.direct(1, 0);
  } else if (keyCode == LEFT && prevKey != "Right") {
    prevKey = "Left";
    s.direct(-1, 0);
  }
}
