
public void setup()
{
  background(0);
  size(1000,1000);
}
public void draw()
{
  noLoop();
  sierpinski(0,1000,1000,235,64,52);
}

public void sierpinski(int x, int y, int len, int r, int g, int b) 
{
  if(len <= 20){
    triangle(x,y,x+len/2,y-len,x+len,y);
  }else{
    fill(r,g,b);
    sierpinski(x,y,len/2,r-10,g,b);
    sierpinski(x+len/2,y,len/2,r-10,g+20,b);
    sierpinski(x+len/4,y-len/2,len/2,r,g,b);
  }
}
