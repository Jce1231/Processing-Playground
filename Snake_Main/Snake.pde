class Snake {
  int x;
  int y;
  int xSpeed;
  int ySpeed;
 Snake() {
    this.x = 0;
    this.y=0;
    this.xSpeed = 1;
    this.ySpeed = 0;
  }
  void update() {
    this.x = this.x + this.xSpeed*scale;
    this.y = this.y + this.ySpeed*scale;
    this.x = constrain(this.x,0,width-scale);
    this.y = constrain(this.y,0,height-scale);
  }
  void show() {
    fill(255);
    rect(this.x, this.y,scale, scale);
  }
  void direct(int xDir, int yDir) {
    this.xSpeed = xDir;
    this.ySpeed = yDir;
  }
}
