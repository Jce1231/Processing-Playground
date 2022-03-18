class Population {
  ArrayList<Rocket> rockets;
  int popsize;
  ArrayList<Rocket> matingPool;
  Population() {
    this.rockets = new ArrayList<Rocket>();
    this.popsize = 100;
    this.matingPool = new ArrayList<>();
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
    float maxFit = 0;
    for (Rocket r : this.rockets) {
      r.calcFitness();
      if (r.fitness > maxFit) {
        maxFit = r.fitness;
      }
    }
    for (Rocket r : this.rockets) {
      r.fitness /= maxFit;
    }
    this.matingPool.clear();
    for (Rocket r : this.rockets) {
      float n = r.fitness * 100;
      for (int j = 0; j < n; j++) {
        this.matingPool.add(r);
      }
    }
  }
  void selection() {
    ArrayList<Rocket> newRockets = new ArrayList<>();
    for (int i = 0; i<this.rockets.size()-1; i++) {
      int randNumA = floor(random(this.matingPool.size()-1));
      int randNumB = floor(random(this.matingPool.size()-1));
      DNA parentA = this.matingPool.get(randNumA).dna;
      DNA parentB = this.matingPool.get(randNumB).dna;
      DNA child = parentA.crossover(parentB);
      newRockets.add(new Rocket(child));
    }
    this.rockets.clear();
    this.rockets.addAll(newRockets);
  }
}
