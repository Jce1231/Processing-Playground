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
  Boolean catches(Pie pie) {
    if (pie.pos.y >= this.pos.y && this.pos.y >0&& pie.pos.x > this.pos.x-this.w/2 && pie.pos.x < this.pos.x + this.w/2) {
      println(pie.pos.x + " " + pie.pos.y);
      println(this.pos.x + " " + this.pos.y);
      return true;
    } else {
      return false;
    }
  }
}
