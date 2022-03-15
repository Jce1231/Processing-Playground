ArrayList<Pie> pies = new ArrayList<>();
Plate plate;
void setup() {
  size(400, 400);

  plate = new Plate(width/2, 100);
}
void draw() {
  background(0);
  if(random(1)<0.1){
  pies.add(new Pie(random(width), random(-100, -20)));
  }
  for (Pie pie : pies) {
    pie.show();
    pie.update();
  }
  for (int i = pies.size()-1; i>=0; i--) {
    if (plate.catches(pies.get(i))) {
      pies.remove(i);
    } else if (pies.get(i).pos.y > height +pies.get(i).r) {
      pies.remove(i);
    }
  }
  plate.show();
  plate.update(mouseX);
  println(pies.size());
}
