class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getsX();
    myCenterY = theShip.getsY();
    myXspeed = theShip.getsXspeed();
    myYspeed = theShip.getsYspeed();
    myPointDirection = theShip.getPoint();
    accelerate(.6);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }   
  public double bulletx(){return myCenterX;}
  public double bullety(){return myCenterY;}
}
