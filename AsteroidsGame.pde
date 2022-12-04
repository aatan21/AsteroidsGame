Spaceship chad = new Spaceship();
Star[] chads = new Star[75];
//Asteroid bob = new Asteroid();
ArrayList <Asteroid> bobsList = new ArrayList <Asteroid>();
public void setup() 
{
  size(600, 600);
  for(int i = 0; i < chads.length; i++){
    chads[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    bobsList.add(new Asteroid());
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
  for(int i = 0; i < bobsList.size(); i++){
    bobsList.get(i).move();
    bobsList.get(i).show();
    float d = dist((float)chad.getX(), (float)chad.getY(), (float)bobsList.get(i).getX(), (float)bobsList.get(i).getY());
    if(d < 30)
      bobsList.remove(i);
  }
  //bob.show();
  //bob.move(); 
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
    chad.setLocation((int)(Math.random() * 580), (int)(Math.random() * 580));
  }
}
