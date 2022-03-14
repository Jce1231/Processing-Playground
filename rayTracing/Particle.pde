class Particle {
  PVector pos;
  ArrayList<Ray> rays = new ArrayList<>();
  Particle() {
    this.pos = new PVector(width/2, height/2);
    for (int i = 0; i<360; i+=10) {

      this.rays.add(new Ray(this.pos.x, this.pos.y, radians(i)));
    }
  }
  void show() {
    fill(255);
    ellipse(this.pos.x, this.pos.y, 4, 4);
    for (Ray r : this.rays) {
      r.show();
    }
  }
  void look(Boundary wall) {
    for (Ray r : rays) {
      PVector pt = r.cast(wall);
      if (pt != null) {
        line(this.pos.x, this.pos.y, pt.x, pt.y);
      }
    }
  }
  void update(float x, float y) {
    this.pos.set(x, y);
  }
}
