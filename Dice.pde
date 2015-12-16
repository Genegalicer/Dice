int sum = 0;
int click = 0;
void setup()
{
  noLoop();
  size(300, 300);
}
void draw()
{
  background(0, 0, 0);
  for (int i = 20; i <=150; i=i +60)
  { 
    for (int a = 10; a < 370; a = a+60)
    {
      Die skylar = new Die(a, i);
      skylar.roll();
      skylar.show();
      sum= sum + skylar.randNum;
    }
  }

  text("score: " +sum, 200, 250);
  text("number of clicks: "+click, 50,250);
}



void mousePressed()
{
  click = click +1;
  redraw();
}
class Die 
{
  int diceX, diceY, randNum;
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
    rect(diceX-10, diceY-10, 20, 20);
    fill(250, 0, 0);
    if (randNum==1)
    {


      ellipse(diceX, diceY, 5, 5);
    }
    if (randNum==2)
    {
      ellipse(diceX+5, diceY+5, 5, 5);
      ellipse(diceX-5, diceY-5, 5, 5);
    }
    if (randNum==3)
    {
      ellipse(diceX, diceY, 5, 5);
      ellipse(diceX-5, diceY-5, 5, 5);
      ellipse(diceX+5, diceY+5, 5, 5);
    }

    if (randNum==4)
    {
      ellipse(diceX+5, diceY+5, 5, 5);
      ellipse(diceX-5, diceY-5, 5, 5);
      ellipse(diceX-5, diceY+5, 5, 5);
      ellipse(diceX+5, diceY-5, 5, 5);
    }
    if (randNum==5)
    {
      ellipse(diceX, diceY, 5, 5);
      ellipse(diceX+5, diceY+5, 5, 5);
      ellipse(diceX-5, diceY-5, 5, 5);
      ellipse(diceX-5, diceY+5, 5, 5);
      ellipse(diceX+5, diceY-5, 5, 5);
    }

    if (randNum==6)
    {
      ellipse(diceX+5, diceY+5, 5, 5);
      ellipse(diceX-5, diceY-5, 5, 5);
      ellipse(diceX-5, diceY+5, 5, 5);
      ellipse(diceX+5, diceY-5, 5, 5);
      ellipse(diceX-5, diceY, 5, 5);
      ellipse(diceX+5, diceY, 5, 5);
    }
  }
}
