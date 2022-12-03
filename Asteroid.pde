class Asteroid extends Floater
{
  protected int rSpeed;
  public Asteroid()
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -15;
    yCorners[5] = 1;
    myCenterX = (int)(Math.random() * 601);
    myCenterY = (int)(Math.random() * 601);
    myColor = color(113, 118, 122);
    myXspeed = myYspeed = (int)(Math.random() * 5);
    myPointDirection = 0;
    rSpeed = (int)(Math.random() * 9);
  }
  public int getCenterX()
  {
    return (int)myCenterX;
  }
  public int getCenterY()
  {
    return (int)myCenterY;
  }
}
