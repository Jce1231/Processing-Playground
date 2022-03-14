class Particle {
  PVector pos;
  ArrayList<Ray> rays = new ArrayList<>();
  Particle() {
    this.pos = new PVector(width/2, height/2);
    for (int i = 0; i<360; i++) {

      this.rays.add(new Ray(this.pos, radians(i)));
    }
  }
  void show() {
    fill(255);
    ellipse(this.pos.x, this.pos.y, 4, 4);
    for (Ray r : this.rays) {
      r.show();
    }
  }
  void look(Boundary[] walls) {

    for (Ray r : rays) {
      PVector closest = null;
      float record = 2000000;
      for (Boundary wall : walls) {

        PVector pt = r.cast(wall);
        if (pt != null) {
          float d = PVector.dist(this.pos, pt);
          if (d<record) {
            record = d;
            closest = pt;
          }
        }
      }
      if (closest != null) {
        stroke(255,100);
        line(this.pos.x, this.pos.y, closest.x, closest.y);
      }
    }
  }
  void update(float x, float y) {
    this.pos.set(x, y);
  }
}
