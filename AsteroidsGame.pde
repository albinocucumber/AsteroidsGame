Spaceship drag = new Spaceship();
Star [] lumin = new Star[500];
ArrayList <Asteroid> boom = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
boolean wPress, aPress, sPress, dPress, bPress, space = false;
public void setup()
{
  size(1000, 1000);
  background(0);
  frameRate(120);
  for(int i = 0; i < lumin.length; i++){
    lumin[i] = new Star();
  }
  for(int j = 0; j < lumin.length; j++){
    lumin[j].show();
  }
  for(int i = 0; i < 20; i++){
    Asteroid roid = new Asteroid();
    boom.add(roid);
  }
}
public void draw() 
{
  background(0);
  for(int j = 0; j < lumin.length; j++){
    lumin[j].show();
  }
  for(int i = 0; i < boom.size(); i++){
    boom.get(i).aShow();
    boom.get(i).aMove();
    float d = dist(drag.getsX(), drag.getsY(), boom.get(i).getX(), boom.get(i).getY());
    //float d = dist(shots.bulletx(), shots.bullety(), boom.get(i).getX(), boom.get(i).getY());
    if(d < 50){
      boom.remove(i);
    }
  }
  drag.move();
  drag.show();
  if(wPress){
    drag.accelerate(.05);
  }
  if(sPress){
    drag.deccelerate(.05);
  }
  if(aPress){
    drag.turn(-3);
  }
  if(dPress){
    drag.turn(3);
  }
  if(space){
    shots.add(new Bullet(drag));
    //bill.setPoint(drag.getPoint());
    for(int i = 0; i < shots.size(); i++){
      shots.get(i).move();
      shots.get(i).show();
      if((shots.get(i).bulletx() > 1000 || shots.get(i).bulletx() < 0) || (shots.get(i).bullety() > 1000 || shots.get(i).bullety() < 0)){
        shots.remove(i);
      }
    }
  }
}
public void keyPressed(){
  if(key == 'w'){
    wPress = true;
  }
  if(key == 's'){
    sPress = true;
  }
  if(key == 'a'){
    aPress = true;
  }
  if(key == 'd'){
    dPress = true;
  }
  if(key == 'e'){
    drag.hyperspace();
  }
  if(key == ' '){
    space = true;
    /*bill.setX(drag.getsX());
    bill.setY(drag.getsY());*/
  }
}
public void keyReleased(){
  if(key == 'w'){
    wPress = false;
  }
  if(key == 'a'){
    aPress = false;
  }
  if(key == 's'){
    sPress = false;
  }
  if(key == 'd'){
    dPress = false;
  }
}
