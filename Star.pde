class Star
{
  protected int myX, myY, myColor;
  Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    myColor = 0;
  }
  public void show()
  {
    fill(255);
    stroke(255);
    ellipse(myX, myY, 5, 5);
  }
}
