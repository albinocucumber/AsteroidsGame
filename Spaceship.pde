class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 3;
    xCorners = new int[corners];   
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myColor = 255;
    myCenterX = 200;
    myCenterY = 200;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace(){
     myCenterX = Math.random() * 400;
     myCenterY = Math.random() * 400;
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = Math.random() * 360; 
  }
  public void deccelerate (double dAmount){  
    double dRadians = myPointDirection*(Math.PI/180);
    myXspeed -= ((dAmount) * Math.cos(dRadians));    
    myYspeed -= ((dAmount) * Math.sin(dRadians));       
  }   
}
