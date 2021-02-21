public void setup()
{
  size(1080, 1080);
  noStroke();
  fill(80);
}

public void draw()
{
  background(255);
  sierpinski(0, height, mouseX * 3);
}

public void mouseDragged()//optional
{

}

public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) {
  triangle(x, y, x + len / 2, y, x + len / 4,y - len / 2);
 } else {
   sierpinski(x, y, len / 2);
   sierpinski(x + len / 4, y, len / 2);
   sierpinski(x + len / 8, y - len / 4, len / 2);
 }
}
