class Asteroid extends Floater{
  protected double rSpeed;
  protected int x;
  protected int y;
  public Asteroid(){
    x = (int)Math.random() * 8;
    y = (int)Math.random() * 24;
    corners = 8;
    xCorners = new int[corners];   
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -24;
    xCorners[1] = 8;
    yCorners[1] = -24;
    xCorners[2] = 24;
    yCorners[2] = -8;
    xCorners[3] = 24;
    yCorners[3] = 8;
    xCorners[4] = 8;
    yCorners[4] = 24;
    xCorners[5] = -8;
    yCorners[5] = 24;
    xCorners[6] = -24;
    yCorners[6] = 8;
    xCorners[7] = -24;
    yCorners[7] = -8;
    myColor = 100;
    myCenterX = Math.random() * 1000;
    myCenterY = Math.random() * 1000;
    myXspeed = Math.random() * 1 - .5;
    myYspeed = Math.random() * 1 - .5;
    myPointDirection = Math.random() * (2 * Math.PI);
    rSpeed = Math.random() * 5;
  }
  private void aMove(){
    turn(rSpeed);
    move();
  }
  private void aShow(){             
    fill(myColor);   
    stroke(myColor);
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    beginShape();
    for (int nI = 0; nI < corners; nI++){
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  public float getX(){
    return (float)myCenterX;
  }
  public float getY(){
    return (float)myCenterY;
  }
}
