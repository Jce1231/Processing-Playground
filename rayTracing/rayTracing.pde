Boundary wall;
//Ray ray;
Particle particle;
void setup() {
  size(400, 400);
  wall = new Boundary(300, 100, 300, 300);
  //ray = new Ray(100,200);
  particle = new Particle();
}
void draw() {
  background(0);
  wall.show();
  particle.update(mouseX,mouseY);
  particle.show();
  particle.look(wall);
  //ray.show();
  //ray.lookAt(mouseX, mouseY);
  //PVector pt = ray.cast(wall);
  //if(pt != null){
  //  fill(255);
  //  ellipse(pt.x,pt.y,8,8);
  //}
}
