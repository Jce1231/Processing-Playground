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
    population = new Population();
    count = 0;
  }
  println(count);
  target.show();
}
