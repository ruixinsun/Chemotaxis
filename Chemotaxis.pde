 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	//lots of java!   
 }    
 
 
 
 
 
 
 
 
 
 Bacteria[] bob;
void setup()
{
 
  size(500,500);
  bob=new Bacteria[1000];
  for (int i=0; i<bob.length; i++)
    bob[i] =new Bacteria();
}
void draw()
{
  background(0);
  for (int i=0; i<bob.length; i++)
    {
      bob[i].show();
      bob[i].walk();
    }
}
class Bacteria
{
  int myX, myY;
  Bacteria()
  {
    myX=myY=250;
  }
  void walk()
  {
    //myX=myX+(int)(Math.random()*7)-3;
      //{-3,-2,-1,0,1,2,3}
    myY+=(int)(Math.random()*7)-3;
  }
  void show()
  {
    ellipse(myX,myY,30,30);
  }
}
