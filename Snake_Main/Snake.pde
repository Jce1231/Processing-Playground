class Snake { //<>//
  int x;
  int y;
  int xSpeed;
  int ySpeed;
  int total = 0;
  ArrayList<Tail> tail = new ArrayList<>();
  Snake() {
    this.x = 0;
    this.y=0;
    this.xSpeed = 1;
    this.ySpeed = 0;
  }
  void update() {
    if (total != 0) {
      for (int i = 0; i<total-1; i++) {
        tail.set(i, tail.get(i+1));
      }
      if (total>=1) {
        tail.set(total-1, new Tail(this.x, this.y)); //<>//
      }
    }
    this.x = this.x + this.xSpeed*scale;
    this.y = this.y + this.ySpeed*scale;
    this.x = constrain(this.x, 0, width-scale);
    this.y = constrain(this.y, 20, height-scale);
  }
  void show() {
    fill(255);
    rect(this.x, this.y, scale, scale);
    if (total != 0) {
      for (Tail t : tail) {
        t.show();
      }
    }
  }
  void direct(int xDir, int yDir) {
    this.xSpeed = xDir;
    this.ySpeed = yDir;
  }
  boolean eat(Food f) {
    int d =(int) dist(this.x, this.y, f.x, f.y);
    if (d<1) {
      total++;
      tail.add(new Tail(this.x,this.y));
      return true;
    } else {
      return false;
    }
  }
}
