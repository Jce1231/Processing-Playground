Boundary walls[];
//Ray ray;
Particle particle;
void setup() {
  size(1280, 720);
  walls = new Boundary[10];
  for (int i = 0; i<walls.length; i++) {
    walls[i] = new Boundary(random(width), random(height), random(width), random(height));
  }
  //ray = new Ray(100,200);
  particle = new Particle();
}
void draw() {
  background(0);
  for (Boundary wall : walls) {
    wall.show();
  }
  particle.update(mouseX, mouseY);
  particle.show();
  particle.look(walls);
  //ray.show();
  //ray.lookAt(mouseX, mouseY);
  //PVector pt = ray.cast(wall);
  //if(pt != null){
  //  fill(255);
  //  ellipse(pt.x,pt.y,8,8);
  //}
}
