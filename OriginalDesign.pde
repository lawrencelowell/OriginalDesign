int x = 1;
int acc = 1;
int wait = 1;
int wait2 = 1;
void setup()
{
  size(800,500);
    frameRate(30);
}

void draw()
{
  backgrounded();
  rollingBall();
  arrow();
  yes();
  refresh();
}

void rollingBall()
{
  fill(200,0,0);
  
  if (wait < 91)
  {
  ellipse(710-((52.5/600)),154+(24/600),50,50);
  }
  
  if (x>0&&x<90&& wait == 91) {
  fill(200,20,20);
  ellipse(710-(52.5*x/30)*0.1*acc,150+(23.8*x/30)*0.1*acc,50,50);
  }
if (x>0&&x<90&&wait == 91){
 x = x + 1;
 acc = acc + 1;
}
if (x==90 && wait2 < 220){
  wait2 = wait2 + 1;}

if (wait < 91){
wait = wait + 1;

}
}

void backgrounded()
{

  background(180,180,180);
  fill(255,255,255);
 
  triangle(0,500,700,500,700,180);
  rect(700,180,100,320);
  fill(200,0,0);
  if (wait < 91){
  textSize(25);
  text("14 Meters",320,480);
  
  line(60,480,680,480);
  line(60,490,60,470);
  line(680,490,680,470);
  }
}

void arrow()
{
  if (wait > 60 && wait < 86){
  fill(0,230,0,60);
  rect(750,140,45,15);
  fill(0,230,0,60);
  triangle(732,146.5,750,146.5+16,750,146.5-14);
  }
}

void yes()
{
  if (wait2 > 30)
{
    fill(20,20,20);
  text("This is the effect of gravity on an incline",180,100);
}
}

void refresh()
{
  if (wait2 == 220)
  {
    x = 1;
    acc = 1;
    wait = 1;
    wait2 = 1;
  }
}
