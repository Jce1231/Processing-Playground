class Rocket {
  PVector pos;
  PVector vel;
  PVector acc;
  PVector force;
  DNA dna;
  float fitness;
  Boolean completed;
  Rocket() {
    this.pos = new PVector(width/2, height);
    this.vel = new PVector();
    this.acc = new PVector();
    this.force = new PVector();
    this.applyForce(force);
    this.dna = new DNA();
    this.fitness = 0;
    this.completed = false;
  }
  Rocket(DNA childDna) {
    this.pos = new PVector(width/2, height);
    this.vel = new PVector();
    this.acc = new PVector();
    this.force = new PVector();
    this.applyForce(force);
    this.dna = childDna;
    this.fitness = 0;
    this.completed = false;
  }
  void applyForce(PVector force) {
    this.acc.add(force);
  }
  void update() {
    float d = dist(this.pos.x, this.pos.y, target.pos.x, target.pos.y);
    if (d<10) {
      this.completed = true;
    }

    this.applyForce(this.dna.genes.get(count));
    if (!this.completed) {
      this.vel.add(this.acc);
      this.pos.add(this.vel);
      this.acc.mult(0);
    }
  }
  void show() {
    push();
    noStroke();
    fill(255, 100);
    translate(this.pos.x, this.pos.y);
    rotate(this.vel.heading());
    rectMode(CENTER);
    rect(0, 0, 25, 5);
    pop();
  }
  void calcFitness() {
    float d = dist(this.pos.x, this.pos.y, target.pos.x, target.pos.y);
    this.fitness = map(d, 0, width, width, 0);
    if (this.completed) {
      this.fitness *= 10;
    }
  }
}
