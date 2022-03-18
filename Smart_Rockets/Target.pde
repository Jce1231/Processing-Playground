class Target {
  PVector pos;
  float r;
  Target() {
    this.pos = new PVector(width/2, 50);
    this.r = 16;
  }
  void show() {
    fill(255);
    noStroke();
    ellipse(this.pos.x, this.pos.y, this.r, this.r);
  }
}
