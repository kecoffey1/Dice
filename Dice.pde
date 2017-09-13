int myX;
int myY; 
int num; 
int total = 0;
void setup()
{
    noLoop();
    size(300,300);
}
void draw()
{
  for(int y = 0; y < 100; y += 1) {
    for (int i = 0; i < 100; i += 1) {
     Die di = new Die(i*20, y*20);
     di.roll();
     di.show();
    }
  }
  fill(255);
    rect(140,0,160,40);
    fill(0);
    text("sum of dice rolls: " +total, 160,20);
  println(total);
}
void mousePressed()
{
    redraw();
    total = 0; 
}
class Die //models one single dice cube
{
    //variable declarations here
    Die(int x, int y) //constructor
    {
        myX = x;
        myY = y;
        
    }
    void roll()
    {
        num = (int)(Math.random()*6)+1;
        total += num; 
        
    }
    void show()
    {
        fill(255);
        rect(myX,myY,20,20);
         fill(0);
         if (num == 1) {
           point(myX-10,myY-10);
         }
         if (num == 2) {
           point(myX-5,myY-15);
           point(myX-15,myY-5);
           
         }
         if (num == 3) {
           point(myX-10,myY-10);
           point(myX-5,myY-15);
           point(myX-15,myY-5);
         }
         if (num == 4) {
           point(myX-5,myY-15);
           point(myX-15,myY-15);
           point(myX-5,myY-5);
           point(myX-15,myY-5);
         }
         if (num == 5) {
           point(myX-10,myY-10);
           point(myX-5,myY-15);
           point(myX-15,myY-15);
           point(myX-5,myY-5);
           point(myX-15,myY-5);
         }
         if (num == 6) {
           point(myX-5,myY-15);
           point(myX-15,myY-15);
           point(myX-5,myY-5);
           point(myX-15,myY-5);
           point(myX-15,myY-10);
           point(myX-5,myY-10);
         }
        
    }
}