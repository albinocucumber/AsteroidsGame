class Star //note that this class does NOT extend Floater
{
  protected int sColor, sSize, sX, sY;
  public Star(){
    sColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    sSize = (int)(Math.random() * 5 + 3);
    sX = (int)(Math.random() * 1000);
    sY = (int)(Math.random() * 1000);
  }
  void show(){
    stroke(sColor);
    fill(sColor);
    ellipse(sX, sY, sSize, sSize);
  }
}
