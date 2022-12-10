class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    myColor = color(200, 0, 0);
    accelerate(6.0);
  }
  public void show()
  {
    fill(myColor);   
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;      
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
