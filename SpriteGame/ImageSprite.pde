public class ImageSprite extends Sprite
{
  protected PImage img;
  
  public ImageSprite(float x, float y, String fileName)
  {
    super(x,y);
    img = loadImage(fileName);
  }
  
  public void drawSprite()
  {
    img.resize(100,100);
    image(img, position.x + 50, position.y- 50);
  } 
}
