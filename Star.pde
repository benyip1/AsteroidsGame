class stars extends Floater{
  public stars(){
    corners = 0;
    myColor = color(255, 255, 255);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
  }
  
  public void show(){
    fill(myColor, (int)(Math.random()*50) + 50);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
}
