class Pie {
  PVector pos;
  Pie(float x, float y) {
    this.pos = new PVector(x, y);
  }

  void show() {
    circle(this.pos.x, this.pos.y, 32);
  }
  void update() {
    this.pos.y = this.pos.y + 1;
  }

}
