public abstract class Sprite
{
  Vector2 position;
  Vector2 velocity;
  float x; 
  float y;
  
  public Sprite(float x, float y)
  {
    position = new Vector2(x,y);
    velocity = new Vector2(0,0);
  }
  public Sprite(Vector2 s)
  {
    position = new Vector2(100,100);
    velocity = new Vector2(0,0);
  }
  public Sprite(Vector2 s, Vector2 v)
  {
    position = new Vector2(100,100);
    velocity = new Vector2(20,40);
  }
  public abstract void drawSprite();
  {
    
  }
  public void move()
  {
    position = position.add(velocity);
  }
  public void moveTo(Vector2 newPosition)
  {
    newPosition = new position(x,y);
  }
  public setVelocity(Vector2 newVelocity)
  {
    newVelocity = new velocity (x,y);
  }
  public Vector2 getPosition()
  {
    float delX = getPosition.x-position.x;
    float delY = getPosition.y - position.y;
  }
  public Vector2 getVelocity()
  {
    float delX = getVelocity.x-velocity.x;
    float delY = getVelocity.y - velocity.y;
  }
}
