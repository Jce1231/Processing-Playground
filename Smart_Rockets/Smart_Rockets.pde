Population population;
Obstacle obstacle;
int lifeSpan = 400;
int count = 0;
float maxForce = 0.2;
int genCount = 0;
Target target;
void setup() {
  size(400, 300);
  population = new Population();
  target = new Target();
  obstacle = new Obstacle(100,150,200,10);
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
    genCount++;
  }
  println(count);
  target.show();
  obstacle.show();
  textSize(32);
  fill(255);
  textAlign(CENTER, CENTER);
  text(count, width-32,10);
  text(genCount,32,10);
}
