spaceship bob;
stars [] dots = new stars[200];
ArrayList <asteroid> asteroids = new ArrayList <asteroid>();
ArrayList <bullet> bullets = new ArrayList <bullet>();
boolean forward = false, left = false, right = false;

int hearts = 3;
int asteroidsDestroyed = 0;

void setup(){
  size(500, 500);
  background(0);
  bob = new spaceship();
  for(int i = 0; i < dots.length; i ++){
    dots[i] = new stars();
  }
  for(int i = 0; i < 25; i ++){
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
      hearts -= 1;
    }
  }
  
  for(int i = 0; i < asteroids.size(); i ++){
    for(int l = 0; l < bullets.size(); l++){
      if(dist(bullets.get(l).getMyCenterX(), bullets.get(l).getMyCenterY(), asteroids.get(i).getMyCenterX(), asteroids.get(i).getMyCenterY()) < 12){
        asteroids.remove(asteroids.get(i));
        bullets.remove(bullets.get(l));
        asteroidsDestroyed += 1;
        break;
      }
    }
  }
  
  for(int i = 0; i < bullets.size(); i ++){
    bullets.get(i).show();
    bullets.get(i).move();
  }  
  
  if(forward == true){bob.accelerate(0.1);}
  if(left == true){bob.turn(-5);}
  if(right == true){bob.turn(5);}
  
  for(int i = 1; i < hearts + 1; i ++){
    fill(255, 0, 0);
    ellipse(15*i + 6 , 25, 15, 15);
  }
  if(hearts <= 0){
    fill(0);
    rect(0, 0, width, height);
    for(int i = 0; i < dots.length; i ++){
      dots[i].show();
    }
    for(int i = 0; i < asteroids.size(); i ++){
      asteroids.remove(i);
    }
    
    fill(255);
    textSize(50);
    text("You Lost", 150, 150);
    
    textSize(25);
    text("You destroyed " + asteroidsDestroyed + " asteroids", 115, 200);
  } else if(asteroids.size() <= 0){
    fill(255);
    textSize(50);
    text("You Won", 150, 150);
    
    textSize(25);
    text("You destroyed " + asteroidsDestroyed + " asteroids", 115, 200);
  }
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
  
  if(key == ' '){
    bullets.add(new bullet(bob));
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
