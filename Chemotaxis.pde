Bacteria[] bob;
int s=10, numBacteria=20;
boolean ismousepress=false;
void setup()
{
  frameRate(15);
  size(500,500);
  bob=new Bacteria[1000];
  for (int i=0; i<numBacteria; i++)
    bob[i] =new Bacteria();
}
void draw()
{
  background(0);
  for (int i=0; i<numBacteria; i++)
    {
      bob[i].show(s);
      bob[i].walk();
    }
    
   if (s<6)s=6;
   if(s>180)s=180;
  
}
void mousePressed()
  {
    for (int i=0; i<numBacteria; i++)
    {
      
      if(bob[i].myX <= mouseX && (bob[i].myX + bob[i].size)>= mouseX 
      && bob[i].myY <= mouseY && (bob[i].myY + bob[i].size)>= mouseY && numBacteria<1000) 
        {
          
          bob[numBacteria]=new Bacteria();
          bob[numBacteria].myX=bob[i].myX;
           bob[numBacteria].myY=bob[i].myY;
           
          numBacteria++;
        }
    }
    
   
  }
void keyPressed()
{
  if (keyCode == UP)
    s++;
  if (keyCode ==DOWN)
   s--;
}

class Bacteria
{
  public int myX, myY, myColor[],size;
  Bacteria()
  {
    myX=(int)(Math.random()*500);
    myY=(int)(Math.random()*500);
    myColor = new int[4];
    for (int i = 0; i<4; i++)
    {
      myColor[i]=(int)(Math.random()*255);
    }
  }
  void walk()
  {
    if (myX>mouseX)
      myX=myX+(int)(Math.random()*5)-5;
    if (myX<mouseX)
      myX=myX+(int)(Math.random()*5);
    if (myY>mouseY)
      myY+=(int)(Math.random()*5)-5;
    if (myY<mouseY)
      myY+=(int)(Math.random()*5);
    if (myY==mouseY || myX==mouseX)
       {
         myX+=(int)(Math.random()*20)-10;
         myY+=(int)(Math.random()*20)-10;
       }
  }
  void show(int size)
  {
    this.size=size;
    fill(myColor[0],myColor[1],myColor[2],myColor[3]);
    ellipse(myX,myY,size,size);
  }
  
}
