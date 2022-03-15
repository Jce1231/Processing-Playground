class Plate {
  PVector pos;
  float h;
  float w;
  Plate(float x, float w) {
    this.pos = new PVector(x, height -this.h);
    this.w = w;
    this.h = 10;
  }
  void show() {
    rectMode(CENTER);
    rect(this.pos.x, this.pos.y, this.w, this.h);
  }
  void update(float x) {
    this.pos.x = x;
  }
    Boolean catches(Pie pie){
  return true;
  }
}
