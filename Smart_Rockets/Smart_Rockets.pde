Population population;
void setup() {
  size(400, 300);
  population = new Population();
}
void draw() {
  background(0);
  population.run();
}
