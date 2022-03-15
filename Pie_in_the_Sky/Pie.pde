class Pie {
  PVector pos;
  float r;
  int digit;
  float ySpeed;
  Pie(float x, float y) {
    this.pos = new PVector(x, y);
    this.r = 16;
    this.digit = floor(random(10));
    this.ySpeed = 0;
  }

  void show() {
    
    fill(255);
    circle(this.pos.x, this.pos.y, this.r*2);
    fill(0);
    textSize(32);
    textAlign(CENTER,CENTER);
    text(this.digit,this.pos.x,this.pos.y-(this.r/2));
  }
  void update() {
    this.pos.y = this.pos.y + this.ySpeed;
    this.ySpeed = this.ySpeed + 0.05;
  }

}
