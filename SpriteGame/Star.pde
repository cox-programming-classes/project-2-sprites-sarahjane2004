class Star extends Sprite implements ICollisionBox
{
   protected Vector2 position;
   protected Vector2 velocity;
   protected float r;
   public Star(float x, float y, float r)
   {
     super(x,y);
     this.r = r;
   }
   public Star(float x, float y, float dx, float dy, float r)
   {
     super(x,y,dx,dy);
     this.r = r;
   }
   boolean collidesWith(ICollisionBox other)
   {
     float distance = this.position.subtract(other.getPosition()).mag();
     return distance < this.radius + other.getRadius();
   }
   float getRadius()
   {
     return r;
   }
   
   public void drawSprite()
   {
     fill(#37D5FF);
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
