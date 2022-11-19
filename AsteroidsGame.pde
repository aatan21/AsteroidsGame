Spaceship chad = new Spaceship();
Star[] chads = new Star[100];
public void setup() 
{
  size(800, 800);
  for(int i = 0; i < chads.length; i++){
    chads[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < chads.length; i++){
    chads[i].show();
  }
  chad.move();
  chad.show();
}
public void keyPressed()
{
  if (key == 'a' || key == 'A') {
    chad.turn(-20);
  }
  if (key == 'd' || key == 'D') {
    chad.turn(20);
  }
  if (key == 'w' || key == 'W') {
    chad.accelerate(1);
  }
  if (key == 'e' || key == 'E') {
    chad.setXspeed(0);
    chad.setYspeed(0);
    chad.setLocation((int)(Math.random() * 640), (int)(Math.random() * 740));
  }
}

