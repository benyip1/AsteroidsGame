class asteroid extends Floater{
  private double myRotSpeed;
  public asteroid(){
    corners = 8;
    myXspeed = (Math.random()*4) - 2;
    myYspeed = (Math.random()*4) - 2;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myPointDirection = Math.random()*5;
    myRotSpeed = Math.random()*5;
    myStrokeColor = 255;
    
    
    xCorners = new int[corners];
    yCorners = new int[corners];
    
    xCorners[0] = (int)(Math.random()*5) - 7;
    yCorners[0] = (int)(Math.random()*5) + 3;
    
    xCorners[1] = (int)(Math.random()*5) - 3;
    yCorners[1] = (int)(Math.random()*5) + 7;
    
    xCorners[2] = (int)(Math.random()*5) + 3;
    yCorners[2] = (int)(Math.random()*5) + 7;
    
    xCorners[3] = (int)(Math.random()*5) + 7;
    yCorners[3] = (int)(Math.random()*5) + 3;
    
    xCorners[4] = (int)(Math.random()*5) + 7;
    yCorners[4] = (int)(Math.random()*5) - 3;
    
    xCorners[5] = (int)(Math.random()*5) + 3;
    yCorners[5] = (int)(Math.random()*5) - 7;
    
    xCorners[6] = (int)(Math.random()*5) - 3;
    yCorners[6] = (int)(Math.random()*5) - 7;
    
    xCorners[7] = (int)(Math.random()*5) - 7;
    yCorners[7] = (int)(Math.random()*5) - 3;
  }
  
  public void move(){
    turn(myRotSpeed);
    super.move();
  }
  
  public float getMyCenterX(){
    return (float)myCenterX;
  }
  
  public float getMyCenterY(){
    return (float)myCenterY;
  }

}
