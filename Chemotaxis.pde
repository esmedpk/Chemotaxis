 //declare bacteria variables here   
 Bacteria[] friend = new Bacteria[100];
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
   fill(165,165,165);
   ellipse(460,450,100,40);
   fill(3,143,255);
   triangle(410,430,440,450,410,470);
   fill(165,165,165);
   triangle(460,410,440,450,480,450);
 }  
 class Bacteria    
 {     
   //lots of java!
   int myX,myY,myColor;
   Bacteria(int x, int y) //constructor
   {
     myX = x;
     myY = y;
   }
   void move()
   {
     myX= myX + (int)(Math.random()*10)-5;
     myY = myY + (int)(Math.random()*10)-5;
   }
   void show()
   {
     int myColor = color(255,159,3);
     fill(myColor);
     ellipse(myX,myY,30,20);
   }
 }    