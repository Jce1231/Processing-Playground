class Food{
int x;
int y;
Food(){
  int cols = floor(width/scale);
  int rows = floor(height/scale);
  this.x = (int)random(cols)*scale;
  this.y = (int)random(rows)*scale;
}
void show(){
  fill(255,0,100);
  rect(this.x,this.y,scale,scale);
}
}
  
