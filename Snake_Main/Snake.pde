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
    this.x = this.x + this.xSpeed;
    this.y = this.y + this.ySpeed;
  }
  void show() {
    fill(255);
    rect(this.x, this.y, 10, 10);
  }
  void direct(int xDir, int yDir) {
    this.xSpeed = xDir;
    this.ySpeed = yDir;
  }
}
