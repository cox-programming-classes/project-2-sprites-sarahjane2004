class Blob extends Sprite implements ICollisionBox
{
  protected float radius;
  protected color myColor;
  
  Blob(float x, float y, float r, color c)
  {
    super(x,y);
    this.dx = 0;
    this.dy = 0;
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
    void drawSprite()
    {
      fill(myColor);
      noStroke();
      rect(position.x, position.y, w, h);
    }
}
