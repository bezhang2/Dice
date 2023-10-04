int randomNumber(int top) {
  return ((int) (Math.random()*(top+1)));
}
void setup()
{
  noLoop();
  size(500, 600);
}
void draw()
{
  int sum = 0;
  Die willy;
  background(225);
  for (int y =15; y < 450; y = y+60) {
    for (int x = 15; x < 450; x = x+60) {
      {
        willy = new Die (x, y);
        willy.roll();
        willy.show();
        sum = sum + willy.value;
      }
    }
  }
  fill(0);
  text("Sum: " + sum, 225, 550);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY;
  int value = 0;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    value = randomNumber(5)+1;
  }
  void show()
  {
    noStroke ();
    fill (130);        
    rect (myX+4, myY+4, 50, 50, 10);
    fill (0);
    rect (myX, myY, 50, 50, 10);
    fill (255);
    if (value == 1) {
      ellipse (myX+25, myY+25, 10, 10);
    } else if (value == 2) {
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+35, myY+35, 10, 10);
    } else if (value == 3) {
      ellipse (myX+10, myY+10, 10, 10);
      ellipse (myX+40, myY+40, 10, 10);
      ellipse (myX+25, myY+25, 10, 10);
    } else if (value == 4) {
      ellipse (myX+12, myY+12, 10, 10);
      ellipse (myX+38, myY+12, 10, 10);
      ellipse (myX+12, myY+38, 10, 10);
      ellipse (myX+38, myY+38, 10, 10);
    } else if (value == 5) {
      ellipse (myX+12, myY+12, 10, 10);
      ellipse (myX+38, myY+12, 10, 10);
      ellipse (myX+12, myY+38, 10, 10);
      ellipse (myX+38, myY+38, 10, 10);
      ellipse (myX+25, myY+25, 10, 10);
    } else {
      ellipse (myX+10, myY+15, 10, 10);
      ellipse (myX+25, myY+15, 10, 10);
      ellipse (myX+40, myY+15, 10, 10);
      ellipse (myX+10, myY+35, 10, 10);
      ellipse (myX+25, myY+35, 10, 10);
      ellipse (myX+40, myY+35, 10, 10);
    }
  }
}
