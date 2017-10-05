int SNOWCOUNT = 500;
float [] snowxs= new float [SNOWCOUNT];
float [] snowys= new float [SNOWCOUNT];

PImage snowflakes; 
PImage chair; 
PImage cloud;

float [] cloudxs = new float [5];
float [] cloudys = new float [5]; 

int chairx= -300;
int chairy= 150;
int chairwidth= 300;
int chairheight= 300;
int chairdirection= -200;

void setup ()

{
  size (800, 800);
  snowflakes= loadImage ("snowflakes.png");
  chair= loadImage ("tchair.png");
  cloud=loadImage ("cloud.png");

  for (int i=0; i< SNOWCOUNT; i++)
  {
    snowxs[i]=random(0, 800);
    snowys[i]=random (width);
  }
}
void draw()  


  {
    SetBackground();
    DrawSkiRod();
    DrawClouds();
    DrawSnowFlakes();
    Skilift();
    //DrawMountain();
    //DrawSign();
    //DrawPole();
  }

  void SetBackground()
  {
    background(0, 33, 99);
  }
  
  void DrawSign()
  {
  }
  void DrawSkiRod()
  {
    strokeWeight(9);  
    line(0, 200, 800, 200);
  }
  void DrawClouds()
  {
    for (int i=0; i<4; i++)

    {
      image(cloud, i*200+0, 10, 200, 100);
    }
  }
  
  
  void DrawSnowFlakes()
  {

  for (int i=0; i< SNOWCOUNT; i++)
  {
    image(snowflakes, snowxs[i], snowys[i], 10, 10);
    snowys[i]+=2;

    if (snowys[i]>height)
    {
      snowxs[i]=random(0, 800);
      snowys[i]=random (width);
    }
  }

  for (int i=0; i< SNOWCOUNT; i++)
  {

    image (snowflakes, snowxs[i], snowys[i], 2, 2 );
    snowys[i]+=1;
  
    if (snowys[i]>height)
    {
      snowxs[i]=random(width);
      snowys[i]=random (0, 800);
    }
  }
  }
  void Skilift()
  {
    tint(0);
    image(chair,chairx, chairy, chairwidth, chairheight); 
    chairx= chairx+ 3;
    noTint();
  }
  

//finish functions
//add a data type- STRING