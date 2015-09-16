{
  redraw();
}
class Die 
{

  
      int diceX, diceY,randNum;
  Die(int x, int y) 
  {
   diceX = x;
   diceY = y;
  }
  void roll()
  {
    randNum = (int)(Math.random()*6+1);
  }
  void show()
  {
    rect(diceX-10,diceY-10,20,20);
      fill(250,0,0);
    if(randNum==1)
    {
      
      
      ellipse(diceX,diceY,5,5);
    }
    if (randNum==2)
    {
      ellipse(diceX+5,diceY+5,5,5);
      ellipse(diceX-5,diceY-5,5,5);
    }
    if(randNum==3)
    {
      ellipse(diceX,diceY,5,5);
      ellipse(diceX-5,diceY-5,5,5);
      ellipse(diceX+5,diceY+5,5,5);
    }
   
    if(randNum==4)
    {
      ellipse(diceX+5,diceY+5,5,5);
      ellipse(diceX-5,diceY-5,5,5);
      ellipse(diceX-5,diceY+5,5,5);
      ellipse(diceX+5,diceY-5,5,5);
    }
     if(randNum==5)
    {
      ellipse(diceX,diceY,5,5);
      ellipse(diceX+5,diceY+5,5,5);
      ellipse(diceX-5,diceY-5,5,5);
      ellipse(diceX-5,diceY+5,5,5);
      ellipse(diceX+5,diceY-5,5,5);
    }
    
   if(randNum==6)
    {
      ellipse(diceX+5,diceY+5,5,5);
      ellipse(diceX-5,diceY-5  ,5,5);
      ellipse(diceX-5,diceY+5,5,5);
      ellipse(diceX+5,diceY-5,5,5);
      ellipse(diceX-5,diceY,5,5);
      ellipse(diceX+5,diceY,5,5);
}

  }
}
