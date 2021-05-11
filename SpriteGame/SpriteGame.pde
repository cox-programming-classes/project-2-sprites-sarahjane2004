PImage img;
ArrayList <ICollisionBox> collidingObjects;

Blob blob;
Block block;
Sprite sprite;
Star star;

void setup()
{
  size (800,600);
  img = loadImage("images.png");
  star = new Star(400, 300, 2, 1, 30);
  blob = new Blob(100,100,50, color(0,200,20));
  block = new Block(300,200,60,40, color(180, 40, 175));
  
  collidingObjects = new ArrayList<ICollisionBox>();
  collidingObjects.add(star);
  collidingObjects.add(blob);
  collidingObjects.add(block);
}

void checkCollisions()
{
  for(int i = 0; i < collidingObjects.size(); i++)
  {
    ICollisionBox obj = collidingObjects.get(i);
    for(int j = i+1; j< collidingObjects.size(); j++)
    {
      ICollisionBox obj2 = collidingObjects.get(j);
      if(obj.collidesWith(obj2))
      {
        textSize(50);
        fill(255, 0, 0);
        text("BOOM", 100, 600);
      }
    }
  }
}

void draw()
{
  background(180, 80, 0);
  blob.keyboardControl();
  blob.move();
  block.followMouse();
  block.move();
  blob.drawSprite();
  block.drawSprite();
  star.move();
  star.drawSprite();
  
  //img.move();
  image(img,100,200);
  if(blob.collidesWith(block))
  {
    textSize(50);
    fill(255, 0,0);
    text("BOOM", 100, 600);
  }
}
