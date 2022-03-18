class Obstacle {
  PVector pos;
  float h;
  float w;
  Obstacle(float x, float y, float _w, float _h) {
    this.pos = new PVector(x, y);
    this.h = _h;
    this.w = _w;
  }
  void show(){
  fill(255);
  rect(this.pos.x,this.pos.y,this.w,this.h);
  }
}
