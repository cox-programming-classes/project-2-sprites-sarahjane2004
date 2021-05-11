class Blob extends Sprite implements ICollisionBox
{
  protected float radius;
  protected color myColor;
  
  public Event onCollision;
  
  void onCollisionWith(Sprite other)
  {
    // if the sprite is also a blob 
    if(other instanceof Blob)
    {
      color temp = myColor;
      myColor = ((Blob)other).myColor;
      ((Blob)other).myColor = temp;
    }
  }
  
  onCollision.trigger(this, other);
  
  Blob(float x, float y, float r, color c)
  {
    super(x,y);
    myColor = c;
    radius = r;
  }
  
  Blob(float x, float y, float r, float dx, float dy, color c)
  {
    super(x,y,dx,dy);
    myColor = c;
    radius = r;
  }
  void drawSprite()
  {
    fill(myColor);
    ellipse(position.x, position.y, 2*radius, 2*radius);

    ellipse(position.x + width, position.y, 2*radius, 2*radius);
    ellipse(position.x - width, position.y, 2*radius, 2*radius);
    ellipse(position.x, position.y + height, 2*radius, 2*radius);
    ellipse(position.x, position.y - height, 2*radius, 2*radius);
    
    ellipse(position.x + width, position.y + height, 2*radius, 2*radius);
    ellipse(position.x + width, position.y - height, 2*radius, 2*radius);
    ellipse(position.x - width, position.y + height, 2*radius, 2*radius);
    ellipse(position.x - width, position.y - height, 2*radius, 2*radius);
  }
  
  boolean collidesWith(ICollisionBox other)
  {
    float distance = this.position.subtract(other.getPosition()).mag();
    return distance < this.radius + other.getRadius();
  }
  
  float getRadius()
  {
    return radius;
  }
}  
public class Block extends Blob
{
    protected float w;
    protected float h;
    
    Block(float x, float y, float w, float h, color c)
    {
      super(x,y,0,c);
      this.w = abs(w);
      this.h = abs(h);
    }
    float getRadius()
    {
      return .5 * sqrt(w*w + h*h);
    }
    void drawSprite()
    {
      fill(myColor);
      noStroke();
      rect(position.x, position.y, w, h);
    }
}
