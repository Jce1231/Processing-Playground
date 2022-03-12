class Tail {
  int x;
  int y;
  Tail(int a, int b) {
    this.x = a;
    this.y = b;
  }
  void show() {
    fill(this.x%256,this.y%256,0);
    rect(this.x, this.y, scale, scale);
  }
  void update(int a, int b) {
    this.x = a;
    this.y = b;
  }
}
