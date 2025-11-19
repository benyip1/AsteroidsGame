spaceship bob;
stars [] dots = new stars[200];
ArrayList <asteroid> asteroids = new ArrayList <asteroid>();

boolean forward = false, left = false, right = false;

void setup(){
  size(500, 500);
  background(0);
  bob = new spaceship();
  for(int i = 0; i < dots.length; i ++){
    dots[i] = new stars();
  }
  for(int i = 0; i < 20; i ++){
    asteroids.add(new asteroid());
  }
}

void draw(){
  background(0);
  bob.move();
  bob.show();
  
  for(int i = 0; i < dots.length; i ++){
    dots[i].show();
  }
  
  for(int i = 0; i < asteroids.size(); i ++){
    asteroids.get(i).move();
    asteroids.get(i).show();
    
    if(dist(bob.getMyCenterX(), bob.getMyCenterY(), asteroids.get(i).getMyCenterX(), asteroids.get(i).getMyCenterY()) < 25){
      asteroids.remove(asteroids.get(i));
    }
  }
  
  if(forward == true){bob.accelerate(0.1);}
  if(left == true){bob.turn(-5);}
  if(right == true){bob.turn(5);}
}

public void keyPressed(){  
  if(key == 'w'){
    forward = true;
  }
  
  if(key == 'a'){
    left = true;
  }
  
  if(key == 'd'){
    right = true;
  }
  
  if(key == 'h'){
    bob.setXSpeed(0);
    bob.setYSpeed(0);
    bob.setMyCenterX((Math.random()*400) + 50);
    bob.setMyCenterY((Math.random()*400) + 50);
    bob.turn(Math.random()*360);
  }
}

public void keyReleased(){
  if(key == 'w'){
    forward = false;
  }
  
  if(key == 'a'){
    left = false;
  }
  
  if(key == 'd'){
    right = false;
  }
}
  
  if(key == 'd'){
    right = false;
  }
}
