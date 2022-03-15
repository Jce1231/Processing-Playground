Pie pie;
Plate plate;
void setup() {
  size(400, 400);
  pie = new Pie(100, 100);
  plate = new Plate(width/2, 100);
}
void draw() {
  background(0);
  pie.show();
  pie.update();
  if (plate.catches(pie)) {
    println("Yay");
  }
  plate.show();
  plate.update(mouseX);
}
