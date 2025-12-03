class bullet extends Floater{
  public bullet(spaceship ship){
    myColor = color(255, 255, 0);
    myCenterX = ship.getMyCenterX();
    myCenterY = ship.getMyCenterY();
    myPointDirection = ship.getMyPointDirection();
    accelerate(3);
  }
  
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 8, 8);
  }
  
  public float getMyCenterX(){
    return (float)myCenterX;
  }
  
  public float getMyCenterY(){
    return (float)myCenterY;
  }
}
