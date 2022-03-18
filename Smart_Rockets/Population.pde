class Population {
  ArrayList<Rocket> rockets;
  int popsize;
  Population() {
    this.rockets = new ArrayList<Rocket>();
    this.popsize = 100;
    for (int i = 0; i<this.popsize; i++) {
      this.rockets.add(new Rocket());
    }
  }
  void run() {
    for (Rocket r : this.rockets) {
      r.update();
      r.show();
    }
  }
  void evaluate() {
    for (Rocket r : this.rockets) {
      r.calcFitness();
    }
  }
}
