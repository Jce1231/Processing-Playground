class Ray {
  PVector pos;
  PVector dir;
  Ray(int x, int y) {
    this.pos = new PVector(x, y);
    this.dir = new PVector(1, 0);
  }
  void show() {
    stroke(255);
    push();
    translate(this.pos.x, this.pos.y);
    line(0, 0, dir.x*10, dir.y*10);
    pop();
  }
  void lookAt(float x, float y) {
    this.dir.x = x-this.pos.x;
    this.dir.y = y-this.pos.y;
    this.dir.normalize();
  }
  PVector cast(Boundary wall) {
    float x1 = wall.a.x;
    float y1 = wall.a.y;
    float x2 = wall.b.x;
    float y2 = wall.b.y;

    float x3 = this.pos.x;
    float y3 = this.pos.y;
    float x4 = this.pos.x + this.dir.x;
    float y4 = this.pos.y + this.dir.y;

    float den = (x1 - x2) * (y3 - y4) - (y1 - y2) * (x3 - x4);
    if (den==0) {
      return null;
    }
    float t = ((x1 - x3) * (y3 - y4) - (y1 - y3) * (x3 - x4)) / den;
    float u = -((x1 - x2) * (y1 - y3) - (y1 - y2) * (x1 - x3)) / den;

    if (t > 0 && t < 1 && u > 0) {
      PVector pt = new PVector();
      pt.x = x1+t*(x2-x1);
      pt.y = y1+t*(y2-y1);
      return pt;
    } else {
      return null;
    }
  }
}
