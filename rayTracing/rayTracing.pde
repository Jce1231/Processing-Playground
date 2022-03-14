Boundary wall;
Ray ray;
void setup() {
  size(400, 400);
  wall = new Boundary(300, 100, 300, 300);
  ray = new Ray(100, 200);
}
void draw() {
  background(0);
  wall.show();
  ray.show();
}
