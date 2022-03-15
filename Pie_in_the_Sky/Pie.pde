class Pie {
  PVector pos;
  float r;
  int digit;
  Pie(float x, float y) {
    this.pos = new PVector(x, y);
    this.r = 16;
    this.digit = floor(random(10));
  }

  void show() {
    
    fill(255);
    circle(this.pos.x, this.pos.y, this.r*2);
    fill(0);
    textSize(32);
    textAlign(CENTER,CENTER);
    text(this.digit,this.pos.x,this.pos.y);
  }
  void update() {
    this.pos.y = this.pos.y + 1;
  }

}
