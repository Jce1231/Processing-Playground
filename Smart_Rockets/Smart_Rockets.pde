Population population;
int lifeSpan = 200;
int count = 0;
Target target;
void setup() {
  size(400, 300);
  population = new Population();
  target = new Target();
}
void draw() {
  background(0);
  population.run();
  count++;
  if (count == lifeSpan) {
    population.evaluate();
    population.selection();
    //population = new Population();
    count = 0;
  }
  println(count);
  target.show();
  textSize(32);
  fill(255);
  textAlign(CENTER, CENTER);
  text(count, width-32,10);
}
