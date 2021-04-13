PImage img;
ImageSprite star;
ArrayList <ICollisionBox> collidingObjects;

Blob blob;
Block block;
Sprite sprite;
Enemy enemy;
Player player;
Star star;

void setup()
{
  size (800,600);
  img = loadImage("images.png");
  star = new Star();
  blob = new Blob(100,100,50, color(0,200,20));
  block = new Block(300,200,60,40, color(180, 40, 175));
}

void draw()
{
  background(180, 80, 0);
  img.move();
  image(img,100,200);
  blob.keyboardControl();
  block.followMouse();
  if(blob.collidesWith(block))
  {
    textSize(50);
    fill(255, 0,0);
    text("BOOM", 100, 600);
  }
}
