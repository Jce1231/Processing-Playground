class Rocket {
  PVector pos;
  PVector vel;
  PVector acc;
  PVector force;
  DNA dna;
  float fitness;
  Boolean completed;
  Boolean crashed;
  int completeCount;
  Rocket() {
    this.pos = new PVector(width/2, height);
    this.vel = new PVector();
    this.acc = new PVector();
    this.force = new PVector();
    this.applyForce(force);
    this.dna = new DNA();
    this.fitness = 0;
    this.completed = false;
    this.crashed = false;
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
    this.crashed = false;
  }
  void applyForce(PVector force) {
    this.acc.add(force);
  }
  void update() {
    if(!this.completed){
    float d = dist(this.pos.x, this.pos.y, target.pos.x, target.pos.y);
    if (d<10) {
      this.completed = true;
      this.completeCount = count;
    }
    }
    if (this.pos.x>obstacle.pos.x && this.pos.x < obstacle.pos.x + obstacle.w && this.pos.y > obstacle.pos.y && this.pos.y < obstacle.pos.y + obstacle.h) {
      this.crashed = true;
    }
    if(this.pos.x > width || this.pos.x <0){
    this.crashed = true;
    }
    if(this.pos.y > height || this.pos.y < 0){
    this.crashed = true;
    }
    this.applyForce(this.dna.genes.get(count));
    if (!this.completed && !this.crashed) {
      this.vel.add(this.acc);
      this.pos.add(this.vel);
      this.acc.mult(0);
      this.vel.limit(4);
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
      this.fitness *= (10*(lifeSpan/this.completeCount));
    }
    if (this.crashed) {
      this.fitness /= 10;
    }
  }
}
