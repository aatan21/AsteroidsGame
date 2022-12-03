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
    myXspeed = myYspeed = (int)(Math.random() * 2 + 1);
    myPointDirection = 0;
    rSpeed = (int)(Math.random()* 8 + 1);
  }
  public void move()
  {
    turn(rSpeed);
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX > width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX < 0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY > height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
}
