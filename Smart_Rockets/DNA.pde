class DNA {
  ArrayList<PVector> genes;
  DNA() {
    this.genes = new ArrayList<>();
    for (int i = 0; i < lifeSpan; i++) {
      this.genes.add(PVector.random2D().setMag(0.1));
    }
  }


  DNA crossover(DNA partner) {
    DNA newDna = new DNA();
    int mid = floor(random(this.genes.size()-1));
    for (int i = 0; i < this.genes.size()-1; i++) {
      if (i > mid) {
        newDna.genes.set(i, this.genes.get(i));
      } else {
        newDna.genes.set(i, partner.genes.get(i));
      }
    }
    return newDna;
  }
  void mutation(){
    for(int i = 0 ; i<this.genes.size()-1;i++){
    if(random(1)<0.01){
      this.genes.set(i,PVector.random2D().setMag(0.1));
    }
    }
  }
}
