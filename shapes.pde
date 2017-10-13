
class Shapes{
  
  float x;
  float y;
  float gravity = .2;
  float speed  = 0;
 
  
  
  Shapes(){
   
   x = random(width);
   y = random(height);
   
   
  }
  
  void display(){
    int[] place = { 100, 200, 300, 400 };
    int list = int(random(place.length));  
    fill(800);
    ellipse(x,place[list],place[list],place[list]);
    rect(place[list],y,place[list],place[list]);
    
    fill(random(255));
    rect(x,y,37,69);
    ellipse(x+100,y,50,50);
    ellipse(place[list],y,place[list],place[list]);
    
    
    y = y + speed;
    speed = speed + gravity;
    if (y > height) {
    
      speed = speed * -0.95;
      y = height;
  }
  
  }
  
}