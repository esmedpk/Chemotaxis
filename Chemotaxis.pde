 //declare bacteria variables here   
 Bacteria[] friend = new Bacteria[100];
 boolean eat = true;
 void setup()   
 {     
   //initialize bacteria variables here
   noStroke();
   size(500,500);
   for(int i = 0; i < friend.length; i++)
   {
     int x = (int)(Math.random()*425);
     int y = (int)(Math.random()*425);
     friend[i] = new Bacteria(x,y);
   }
 }   
 void draw()   
 {    
   //move and show the bacteria 
   background(3,143,255);
   for(int i = 0; i < friend.length; i++)
   {
     friend[i].show();
     friend[i].move();
   }
   shark(mouseX, mouseY);
 }  
 class Bacteria    
 {     
   //lots of java!
   int myX,myY,myColor;
   boolean alive;
   Bacteria(int x, int y) //constructor
   {
     myX = x;
     myY = y;
     alive = true;
     myColor = color(255,159,3);
   }
   void move()
   {
     myX= myX + (int)(Math.random()*10)-5;
     myY = myY + (int)(Math.random()*10)-5;
     if(dist(myX,myY,mouseX,mouseY) < 10)
     {
       alive = false;
     }
   }
   void show()
   {
     fill(myColor);
     if(alive == true)
     {
       ellipse(myX,myY,30,20);
       triangle(myX,myY,myX+20,myY-5,myX+20,myY+5);
     }
   }
 } 
 void shark(int x, int y)
 {
   fill(165,165,165);
   ellipse(x+10,y,100,40);
   fill(3,143,255);
   triangle(x-40,y-20,x-10,y,x-40,y+20);
   fill(165,165,165);
   triangle(x+10,y-40,x-10,y,x+30,y);
   triangle(x+30,y,x+80,y-20,x+80,y+20);
   fill(3,143,255);
   triangle(x+70,y,x+80,y-20,x+80,y+20);
 }