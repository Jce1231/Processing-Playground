ArrayList<Pie> pies = new ArrayList<>();
Plate plate;
String digits;
String[] pi;
void preload(){
pi = loadStrings(one-million.txt);
}
void setup() {
  size(400, 600);
  digits = "3.";
  plate = new Plate(width/2, 50);
}
void draw() {
  background(0);
  if(random(1)<0.05){
  pies.add(new Pie(random(width), random(-100, -20)));
  }
  for (Pie pie : pies) {
    pie.show();
    pie.update();
  }
  for (int i = pies.size()-1; i>=0; i--) {
    if (plate.catches(pies.get(i))) {
      digits += pies.get(i).digit;
      pies.remove(i);
    } else if (pies.get(i).pos.y > height-200 +pies.get(i).r) {
      pies.remove(i);
    }
  }
  plate.show();
  plate.update(mouseX);
  println(pies.size());
  fill(255);
  rect(width/2,height,400,400);
  textSize(32);
  textAlign(CENTER);
  fill(0);
  text("Digits of pie",width/2,425);
  text(digits,width/2,450);
  
}
