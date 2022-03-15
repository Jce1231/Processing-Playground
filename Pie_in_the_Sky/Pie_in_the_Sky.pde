ArrayList<Pie> pies = new ArrayList<>();
Plate plate;
void setup() {
  size(400, 400);

  plate = new Plate(width/2, 100);
}
void draw() {
  background(0);
  pies.add(new Pie(random(width), random(-100, -20)));
  for (Pie pie : pies) {
    pie.show();
    pie.update();
    if (plate.catches(pie)) {
      println("Yay");
    }
  }
  for (int i = 0; i<pies.size()-1; i++) {
    if (pies.get(i).pos.y > height) {
      pies.remove(i);
    }
  }
  plate.show();
  plate.update(mouseX);
  println(pies.size());
}
