class DNA{
ArrayList<PVector> genes;

  DNA(){
    this.genes = new ArrayList<>();
    for (int i = 0; i < lifeSpan; i++){
    this.genes.add(PVector.random2D().setMag(0.1));
    }
}
}
