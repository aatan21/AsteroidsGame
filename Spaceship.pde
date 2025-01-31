class Spaceship extends Floater  
{
  public Spaceship ()
  {
    corners = 4; 
    xCorners = new int[corners]; 
    yCorners = new int[corners]; 
    xCorners[0] = -8; 
    yCorners[0] = -8; 
    xCorners[1] = 16; 
    yCorners[1] = 0; 
    xCorners[2] = -8; 
    yCorners[2] = 8;
    xCorners[3] = -2; 
    yCorners[3] = 0;
    myCenterX = myCenterY = 300;
    myColor = color(55, 198, 255);
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
  } 
  public void setXspeed(int a)
  {
    myXspeed = a;
  }
  public void setYspeed(int a)
  {
    myYspeed = a;
  }
  public void setLocation(int x, int y)
  {
    myCenterX = x;
    myCenterY = y;
  }
  public double getX()
  {
    return myCenterX;
  }
   public double getY()
  {
    return myCenterY;
  }
  public double getXspeed()
  {  
    return myXspeed;
  }
  public double getYspeed()
  {  
    return myYspeed;
  }
  public double getPointDirection()
  {  
    return myPointDirection;
  }
}
