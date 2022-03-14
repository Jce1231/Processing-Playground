class Ray {
  PVector pos;
  PVector dir;
  Ray(int x, int y) {
    this.pos = new PVector(x, y);
    this.dir = new PVector(1, 0);
  }
  void show() {
    stroke(255);
    pushMatrix();
    translate(this.pos.x, this.pos.y);
    line(0, 0, dir.x*10, dir.y*10);
    popMatrix();
  }
}
