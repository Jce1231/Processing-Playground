class Rocket {
  PVector pos;
  PVector vel;
  PVector acc;
  PVector force;
  DNA dna;
  int count;
  Rocket() {
    this.pos = new PVector(width/2,height);
    this.vel = new PVector();
    this.acc = new PVector();
    this.force = new PVector();
    this.applyForce(force);
    this.dna = new DNA();
    this.count = 0;
  }
  void applyForce(PVector force) {
    this.acc.add(force);
  }
  void update() {
    if(this.count < lifeSpan){
    this.applyForce(this.dna.genes.get(this.count));
    this.count++;
    }
    this.vel.add(this.acc);
    this.pos.add(this.vel);
    this.acc.mult(0);
  }
  void show() {
    push();
    noStroke();
    fill(255,100);
    translate(this.pos.x, this.pos.y);
    rotate(this.vel.heading());
    rectMode(CENTER);
    rect(0, 0, 25, 5);
    pop();
  }
}
