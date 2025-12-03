class spaceship extends Floater{
  public spaceship(){
    corners = 4;
    xCorners = new int []{-8, 16, -8, 2};
    yCorners = new int []{-8, 0, 8, 0};
    myCenterX = 250;
    myCenterY = 250;
    myColor = color(255, 255, 255);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  
  public double getXspeed(){
    return myXspeed;
  }
  public void setXSpeed(double newXSpeed){
    myXspeed = newXSpeed;
  }
  
  public double getYSpeed(){
    return myYspeed;
  }
  public void setYSpeed(double newYSpeed){
    myYspeed = newYSpeed;
  }
  
  public void setMyCenterX(double newCenterX){
    myCenterX = newCenterX;
  }
  
  public void setMyCenterY(double newCenterY){
    myCenterY = newCenterY;
  }
  
  public float getMyCenterX(){
    return (float)myCenterX;
  }
  
  public float getMyCenterY(){
    return (float)myCenterY;
  }
  
  public float getMyPointDirection(){
    return (float)myPointDirection;
  }
}
