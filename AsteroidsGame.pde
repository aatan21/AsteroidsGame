Spaceship chad = new Spaceship();
Star[] chads = new Star[75];
Asteroid bob = new Asteroid();
public void setup() 
{
  size(600, 600);
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
  bob.show();
}
public void keyPressed()
{
  if (key == 'a' || key == 'A') {
    chad.turn(-30);
  }
  if (key == 'd' || key == 'D') {
    chad.turn(30);
  }
  if (key == 'w' || key == 'W') {
    chad.accelerate(0.5);
  }
  if (key == 'e' || key == 'E') {
    chad.setXspeed(0);
    chad.setYspeed(0);
    chad.setLocation((int)(Math.random() * 440), (int)(Math.random() * 540));
  }
}
