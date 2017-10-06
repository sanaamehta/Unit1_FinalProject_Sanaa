import processing.sound.*;

int SNOWCOUNT = 500;
float [] snowxs= new float [SNOWCOUNT];
float [] snowys= new float [SNOWCOUNT];

PImage snowflakes; 
PImage chair; 
PImage cloud;
PImage mt;

float [] cloudxs = new float [5];
float [] cloudys = new float [5]; 

int chairx= -300;
int chairy= 150;
int chairwidth= 300;
int chairheight= 300;
int chairdirection= -200;
int keyp=1;

String mountain = new String("Mt.Sun");
String favouriteskiplace1= new String ("Niseko Valley, Japan");
String favouriteskiplace2= new String ("Kitzbuhel, Austria");
String favouriteskiplace3= new String ("The French Alps, France");
String favouriteskiplace4= new String ("Verbier, Switzerland");

SoundFile file;

void setup ()

{
  size (800, 800);
  snowflakes= loadImage ("snowflakes.png");
  chair= loadImage ("tchair.png");
  cloud=loadImage ("cloud.png");
  mt= loadImage("mountain.png"); 
  file = new SoundFile(this, "SilverNights.mp3");
  file.jump(27.4);
  file.play();


  for (int i=0; i< SNOWCOUNT; i++)
  {
    snowxs[i]=random(0, 800);
    snowys[i]=random (width);
  }
}
void draw()  


{
  SetBackground();
  DrawMountain();
  Text();
  DrawSkiRod();
  DrawClouds();
  DrawSnowFlakes();
  Skilift();
  DrawSign();
  MouseText();
}

void SetBackground()
{
  background(0, 33, 99);
}

void DrawSign()
{
  line(50, 500, 155, 500);
}
void Text()
{
  fill(255,232,240);
  textSize(30);
  text(mountain, 50, 490);
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
void DrawMountain ()
{
  image(mt, 30, 500, 770, 300);
}
void Skilift()
{
  tint(0);
  image(chair, chairx, chairy, chairwidth, chairheight); 
  chairx= chairx+ 3;
  noTint();
  if (chairx>width)
  {
    chairx=-200;
  }
}
void MouseText()
{
  strokeWeight(keyp);
  if (mousePressed)
  {
    line(mouseX, mouseY, pmouseX, pmouseY);

    fill(29,405,23);
    textSize(15);
    text(favouriteskiplace1, 30, 90);
    
    fill(29,203,62);
    textSize(15);
    text(favouriteskiplace2, 230, 90);
    
    fill(245, 134,30);
    textSize(13);
    text(favouriteskiplace3,430, 90);
    
    fill(340,30,12);
    textSize(15);
    text(favouriteskiplace4, 630, 90);
        
    // variable pmouseX/Y helps show the horizontal/vertical position of the mouse in the past screen (compared to the current).
  }
}
void keyPressed() 
{
  if (key=='1')
  {
    keyp=5;
  }
  if (key=='2')
  {
    keyp=10;
  }
  if (key=='3')
  {
    keyp=15;
  }
  if (key=='4')
  {
    keyp=20;
  }
  if (key=='5')
  {
    keyp=25;
  }
  if (key=='6')
  {
    keyp=30;
  }
  if (key=='7')
  {
    keyp=35;
  }
  if (key=='8')
  {
    keyp=40;
  }
  if (key=='9')
  {
    keyp=45;
  }
}