class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getsX();
    myCenterY = theShip.getsY();
    myPointDirection = theShip.getPoint();
    myXspeed = theShip.getsXspeed();
    myYspeed = theShip.getsYspeed();
    accelerate(2);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void setX(double x){myCenterX = x;}
  public void setY(double y){myCenterY = y;}
  public void setPoint(double z){myPointDirection = z;}
}
