Boundary b;
void setup() {
  size(400,400);
  b = new Boundary(300,100,300,300);
}
void draw() {
  background(0);
  b.show();
}
