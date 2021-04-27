class ConceptCheck extends Sprite implements ICollisionBox
{
  protected float radius;
  protected color myColor;
  
  ConceptCheck(float x, float y, float r, color c)
  {
    super(x,y);
    myColor = c;
    radius = r;
  }
  
  ConceptCheck(float x, float y, float r, float dx, float dy, color c)
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
public class Object2 extends Blob
{
    protected float w;
    protected float h;
    
    Object2(float x, float y, float w, float h, color c)
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
      fill(#D378E5);
      noStroke();
      rect(position.x, position.y, w, h);
    }
}
public class Object3 extends Blob
{
    protected float w;
    protected float h;
    
    Object3(float x, float y, float x2, float y2, float x3, float y3, float w, float h, color c)
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
      fill(#78C2E5);
      noStroke();
      triangle(position.x, position.y, position.x2, position.y2, position.x3, position.y3);
      
      triangle(position.x + width, position.y, position.x2, position.y2, position.x3, position.y3);
      triangle(position.x - width, position.y, position.x2, position.y2, position.x3, position.y3);
      triangle(position.x, position.y + height, position.x2, position.y2, position.x3, position.y3);
      triangle(position.x, position.y - height, position.x2, position.y2, position.x3, position.y3);
      triangle(position.x + width, position.y + height, position.x2, position.y2, position.x3, position.y3);
      triangle(position.x + width, position.y - height, position.x2, position.y2, position.x3, position.y3);
      triangle(position.x - width, position.y + height, position.x2, position.y2, position.x3, position.y3);
      triangle(position.x - width, position.y - height, position.x2, position.y2, position.x3, position.y3);
      
      triangle(position.x, position.y, position.x2 + width, position.y2, position.x3, position.y3);
      triangle(position.x, position.y, position.x2 - width, position.y2, position.x3, position.y3);
      triangle(position.x, position.y, position.x2, position.y2 + height, position.x3, position.y3);
      triangle(position.x, position.y, position.x2, position.y2 - height, position.x3, position.y3);
      triangle(position.x, position.y, position.x2 + width, position.y2 + height, position.x3, position.y3);
      triangle(position.x, position.y, position.x2 + width, position.y2 - height, position.x3, position.y3);
      triangle(position.x, position.y, position.x2 - width, position.y2 + height, position.x3, position.y3);
      triangle(position.x , position.y, position.x2 - width, position.y2 - height, position.x3, position.y3);
      
      triangle(position.x, position.y, position.x2, position.y2, position.x3+ width, position.y3);
      triangle(position.x , position.y, position.x2, position.y2, position.x3 - width, position.y3);
      triangle(position.x, position.y, position.x2, position.y2, position.x3, position.y3 - height);
      triangle(position.x, position.y, position.x2, position.y2, position.x3, position.y3 + height);
      triangle(position.x, position.y, position.x2, position.y2, position.x3 + width, position.y3 + height);
      triangle(position.x, position.y, position.x2, position.y2, position.x3 + width, position.y3 - height);
      triangle(position.x, position.y, position.x2, position.y2, position.x3 - width, position.y3 + height);
      triangle(position.x, position.y, position.x2, position.y2, position.x3 - width, position.y3 - height);
    }
}
public class Object4 extends Blob
{
    protected float w;
    protected float h;
    
    Object4(float x, float y, float w, float h, color c, float r1, float r2)
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
      fill(#78E5BC);
      noStroke();
      arc(position.x, position.y, w, h, r1, r2);
      
      arc(position.x + width, position.y, w, h, r1, r2);
      arc(position.x - width, position.y, w, h, r1, r2);
      
      arc(position.x, position.y + height, w, h, r1, r2);
      arc(position.x, position.y - height, w, h, r1, r2);
      
      arc(position.x + width, position.y + height, w, h, r1, r2);
      arc(position.x + width, position.y - height, w, h, r1, r2);
      
      arc(position.x - width, position.y + height, w, h, r1, r2);
      arc(position.x - width, position.y - height, w, h, r1, r2);
    }
}
public class Object5 extends Blob
{
    protected float w;
    protected float h;
    
    Object5(float x, float y, float w, float h, color c, float r)
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
      fill(#DAFF0D);
      noStroke();
      Vector2 v = new Vector2(0,-50);
    Vector2 v2 = v.rotate(PI/5).scale(0.5);
    Vector2 v3 = v.rotate(2*PI/5);
    Vector2 v4 = v2.rotate(2*PI/5);
    Vector2 v5 = v3.rotate(2*PI/5);
    Vector2 v6 = v4.rotate(2*PI/5);
    Vector2 v7 = v5.rotate(2*PI/5);
    Vector2 v8 = v6.rotate(2*PI/5);
    Vector2 v9 = v7.rotate(2*PI/5);
    Vector2 v10 = v8.rotate(2*PI/5);
    
    beginShape();
    vertex(position.add(v).x + width, position.add(v).y + height);
    vertex(position.add(v).x - width, position.add(v).y - height);
    vertex(position.add(v2).x, position.add(v2).y);
    vertex(position.add(v3).x, position.add(v3).y);
    vertex(position.add(v4).x, position.add(v4).y);
    vertex(position.add(v5).x, position.add(v5).y);
    vertex(position.add(v6).x, position.add(v6).y);
    vertex(position.add(v7).x, position.add(v7).y);
    vertex(position.add(v8).x, position.add(v8).y);
    vertex(position.add(v9).x, position.add(v9).y);
    vertex(position.add(v10).x, position.add(v10).y);
    endShape();
    
    beginShape();
    vertex(position.add(v).x, position.add(v).y);
    vertex(position.add(v2).x + width, position.add(v2).y + height);
     vertex(position.add(v2).x - width, position.add(v2).y - height);
    vertex(position.add(v3).x, position.add(v3).y);
    vertex(position.add(v4).x, position.add(v4).y);
    vertex(position.add(v5).x, position.add(v5).y);
    vertex(position.add(v6).x, position.add(v6).y);
    vertex(position.add(v7).x, position.add(v7).y);
    vertex(position.add(v8).x, position.add(v8).y);
    vertex(position.add(v9).x, position.add(v9).y);
    vertex(position.add(v10).x, position.add(v10).y);
    endShape();
    
    beginShape();
    vertex(position.add(v).x, position.add(v).y);
    vertex(position.add(v2).x, position.add(v2).y);
    vertex(position.add(v3).x + width, position.add(v3).y + height);
     vertex(position.add(v3).x - width, position.add(v3).y - height);
    vertex(position.add(v4).x, position.add(v4).y);
    vertex(position.add(v5).x, position.add(v5).y);
    vertex(position.add(v6).x, position.add(v6).y);
    vertex(position.add(v7).x, position.add(v7).y);
    vertex(position.add(v8).x, position.add(v8).y);
    vertex(position.add(v9).x, position.add(v9).y);
    vertex(position.add(v10).x, position.add(v10).y);
    endShape();
    
    beginShape();
    vertex(position.add(v).x, position.add(v).y);
    vertex(position.add(v2).x, position.add(v2).y);
    vertex(position.add(v3).x, position.add(v3).y);
    vertex(position.add(v4).x + width, position.add(v4).y + height);
    vertex(position.add(v4).x - width, position.add(v4).y - height);
    vertex(position.add(v5).x, position.add(v5).y);
    vertex(position.add(v6).x, position.add(v6).y);
    vertex(position.add(v7).x, position.add(v7).y);
    vertex(position.add(v8).x, position.add(v8).y);
    vertex(position.add(v9).x, position.add(v9).y);
    vertex(position.add(v10).x, position.add(v10).y);
    endShape();
    
    beginShape();
    vertex(position.add(v).x, position.add(v).y);
    vertex(position.add(v2).x, position.add(v2).y);
    vertex(position.add(v3).x, position.add(v3).y);
    vertex(position.add(v4).x, position.add(v4).y);
    vertex(position.add(v5).x + width, position.add(v5).y + height);
    vertex(position.add(v5).x - width, position.add(v5).y - height);
    vertex(position.add(v6).x, position.add(v6).y);
    vertex(position.add(v7).x, position.add(v7).y);
    vertex(position.add(v8).x, position.add(v8).y);
    vertex(position.add(v9).x, position.add(v9).y);
    vertex(position.add(v10).x, position.add(v10).y);
    endShape();
    
    beginShape();
    vertex(position.add(v).x, position.add(v).y);
    vertex(position.add(v2).x, position.add(v2).y);
    vertex(position.add(v3).x, position.add(v3).y);
    vertex(position.add(v4).x, position.add(v4).y);
    vertex(position.add(v5).x, position.add(v5).y);
    vertex(position.add(v6).x + width, position.add(v6).y + height);
    vertex(position.add(v6).x - width, position.add(v6).y - height);
    vertex(position.add(v7).x, position.add(v7).y);
    vertex(position.add(v8).x, position.add(v8).y);
    vertex(position.add(v9).x, position.add(v9).y);
    vertex(position.add(v10).x, position.add(v10).y);
    endShape();
    
    beginShape();
    vertex(position.add(v).x, position.add(v).y);
    vertex(position.add(v2).x, position.add(v2).y);
    vertex(position.add(v3).x, position.add(v3).y);
    vertex(position.add(v4).x, position.add(v4).y);
    vertex(position.add(v5).x, position.add(v5).y);
    vertex(position.add(v6).x, position.add(v6).y);
    vertex(position.add(v7).x + width, position.add(v7).y + height);
    vertex(position.add(v7).x - width, position.add(v7).y - height);
    vertex(position.add(v8).x, position.add(v8).y);
    vertex(position.add(v9).x, position.add(v9).y);
    vertex(position.add(v10).x, position.add(v10).y);
    endShape();
    
    beginShape();
    vertex(position.add(v).x, position.add(v).y);
    vertex(position.add(v2).x, position.add(v2).y);
    vertex(position.add(v3).x, position.add(v3).y);
    vertex(position.add(v4).x, position.add(v4).y);
    vertex(position.add(v5).x, position.add(v5).y);
    vertex(position.add(v6).x, position.add(v6).y);
    vertex(position.add(v7).x, position.add(v7).y);
    vertex(position.add(v8).x + width, position.add(v8).y + height);
    vertex(position.add(v8).x - width, position.add(v8).y - height);
    vertex(position.add(v9).x, position.add(v9).y);
    vertex(position.add(v10).x, position.add(v10).y);
    endShape();
    
    beginShape();
    vertex(position.add(v).x, position.add(v).y);
    vertex(position.add(v2).x, position.add(v2).y);
    vertex(position.add(v3).x, position.add(v3).y);
    vertex(position.add(v4).x, position.add(v4).y);
    vertex(position.add(v5).x, position.add(v5).y);
    vertex(position.add(v6).x, position.add(v6).y);
    vertex(position.add(v7).x, position.add(v7).y);
    vertex(position.add(v8).x, position.add(v8).y);
    vertex(position.add(v9).x + width, position.add(v9).y + height);
    vertex(position.add(v9).x - width, position.add(v9).y - height);
    vertex(position.add(v10).x, position.add(v10).y);
    endShape();
    
    beginShape();
    vertex(position.add(v).x, position.add(v).y);
    vertex(position.add(v2).x, position.add(v2).y);
    vertex(position.add(v3).x, position.add(v3).y);
    vertex(position.add(v4).x, position.add(v4).y);
    vertex(position.add(v5).x, position.add(v5).y);
    vertex(position.add(v6).x, position.add(v6).y);
    vertex(position.add(v7).x, position.add(v7).y);
    vertex(position.add(v8).x, position.add(v8).y);
    vertex(position.add(v9).x, position.add(v9).y);
    vertex(position.add(v10).x + width, position.add(v10).y + height);
    vertex(position.add(v10).x - width, position.add(v10).y - height);
    endShape();
    }
}
