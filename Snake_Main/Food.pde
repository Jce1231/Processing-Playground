class Food {
  int x;
  int y;
  Food() {
    int cols = floor(width/scale);
    int rows = floor((height-20)/scale);
    this.x = (int)random(cols)*scale;
    this.y = ((int)random(rows)*scale) + 20;
  }
  void show() {
    fill(255, 0, 100);
    rect(this.x, this.y, scale, scale);
  }
}
