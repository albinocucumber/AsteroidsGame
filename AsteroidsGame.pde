Spaceship drag = new Spaceship();
Star [] lumin = new Star[100];
public void setup() 
{
  size(400, 400);
  background(0);
  frameRate(60);
  for(int i = 0; i < lumin.length; i++){
    lumin[i] = new Star();
  }
  for(int j = 0; j < lumin.length; j++){
    lumin[j].show();
  }
}
public void draw() 
{
  background(0);
  for(int j = 0; j < lumin.length; j++){
    lumin[j].show();
  }
  drag.move();
  drag.show();
}
public void keyPressed(){
  if(key == 'w'){
    drag.accelerate(0.2);
  }
  if(key == 's'){
    drag.deccelerate(0.2);
  }
  if(key == 'a'){
    drag.turn(-5);
  }
  if(key == 'd'){
    drag.turn(5);
  }
  if(key == 'e'){
    drag.hyperspace();
  }
}
