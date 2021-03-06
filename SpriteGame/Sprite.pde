public abstract class Sprite
{
  Vector2 position;
  Vector2 velocity;
  
  public Sprite(float x, float y)
  {
    position = new Vector2(x,y);
    velocity = new Vector2(0,0);
  }
  
  public abstract void drawSprite();
  {
    
  }
  public void move()
  {
    position = position.add(velocity);
  }
}
