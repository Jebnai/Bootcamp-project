import java.util.Scanner;
int labelXPos = 0;
int labelYPos = 0;
float a=1;
float b=1, c=1.05;
float d=1;
float t = 40;
int cIntercept=0;
boolean linear = false, quadratic = false, cubic = false, sine = false, tangent = false, exp = false;
String instruction = "1: Linear";


void setup()
{
  size(800, 1100);
  background(255);
  fill(146, 146, 206);
  noStroke();
  rect(0, 800, 800, 300);
}


void draw()
{  
  background(255);
  resetMatrix();
  fill(146, 146, 206);
  noStroke();
  rect(0, 800, 800, 30);
  text(instruction, 900, 900);




  //Drawing axes.
  drawAxes();

  //Labelling the axes
  labelAxes();
  if (linear == true)
  {
    linearGraph();
  }
  if (quadratic == true)
  {
    quadraticGraph();
  }
  if (cubic == true)
  {
    cubicGraph();
  }
  if (sine == true)
  {
    sineGraph();
  }
  if (tangent == true)
  {
    tangentGraph();
  }
  if (exp == true)
  {
    expFunction();
  }
}




void drawAxes()
{
  stroke(90);

  line(400, 0, 400, 800);
  line(0, 400, 800, 400);
  fill(146, 146, 206);
  for (int lineI = 0; lineI < 810; lineI = lineI + 40)
  {
    line(lineI, 395, lineI, 405);
  }
  for (int lineJ = 0; lineJ < 810; lineJ = lineJ +40)
  {
    line(395, lineJ, 405, lineJ);
  }
}

void labelAxes()
{
  for (int labelX = -40; labelX < 40; labelX = labelX +4)
  {
    text(labelX, labelXPos, 410);
    labelXPos = labelXPos + 40;
  }
  for (int labelY = -40; labelY <40; labelY = labelY + 4)
  {
    text(labelY, 405, labelYPos);
    labelYPos = labelYPos + 40;
  }
  fill(0);
  textSize(20);
  resetMatrix();
  fill(146, 146, 206);
  rect(0, 800, 800, 300);
}




void expFunction()
{
  scale(1, -1);
  translate(width/2, -height/2);
  for (float x = 0; x< 400; x = x +0.25)
  {
    float y;
    y = (a*exp(0.07*x+b)+150+cIntercept);
    ellipse(x, y, 2, 2);
    fill(146, 146, 206);
    rect(0, 800, 800, 300);
  }
  for (float x = 0; x > -400; x = x - 0.25)
  {
    float y;
    y = a*exp(0.07*x+b)+150+cIntercept;
    ellipse(x, y, 2, 2);
    fill(146, 146, 206);
    rect(0, 800, 800, 300);
  }
  resetMatrix();
  fill(146, 146, 206);
  rect(0, 800, 800, 300);
}

void tangentGraph()
{
  scale(1, -1);
  translate(width/2, -height/2);
  for (float x = 0; x<400; x = x + 0.05)
  {
    float y;
    y = t*tan(0.03*c*x+b)+150+cIntercept;
    ellipse(x, y, 2, 2);
    fill(146, 146, 206);
    rect(0, 800, 800, 300);
  }
  for (float x = 0; x > -400; x = x - 0.05)
  {
    float y;
    y = t*tan(0.03*c*x+b)+150+cIntercept;
    ellipse(x, y, 2, 2);
    fill(146, 146, 206);
    rect(0, 800, 800, 300);
  }
  resetMatrix();
  fill(146, 146, 206);
  rect(0, 800, 800, 300);
}

void sineGraph()
{
  scale(1, -1);
  translate(width/2, -height/2);
  for (float x = 0; x<400; x = x + 0.05)
  {
    float y;
    y = t*sin(c*x+b)+150+cIntercept;
    ellipse((x*10), y, 2, 2);
    fill(146, 146, 206);
    rect(0, 800, 800, 300);
  }
  for (float x = 0; x>-400; x = x - 0.05)
  {
    float y;
    y = t*sin(c*x+b)+150+cIntercept;
    ellipse((x*10), y, 2, 2);
    fill(146, 146, 206);
    rect(0, 800, 800, 300);
  }
  resetMatrix();
  fill(146, 146, 206);
  rect(0, 800, 800, 300);
}

void cubicGraph()
{
  scale(1, -1);
  translate(width/2, -height/2);
  for (float x = 0; x<400; x = x+0.05)
  {
    float y; 

    y = (a*x*x*x)+(b*x*x)+(c*x)+150+cIntercept;
    ellipse((x*10), y, 2, 2);
    fill(146, 146, 206);
    rect(0, 800, 800, 300);
  }
  for (float x = 0; x > -400; x = x-0.05)
  {
    float y;
    pow(3,2);
    y = pow((a*x*x*x)+(b*x*x)+(c*x)+150+cIntercept, -1);
    ellipse((x*10), y, 2, 2);
    fill(146, 146, 206);
    rect(0, 800, 800, 300);
  }
  resetMatrix();
  fill(146, 146, 206);
  rect(0, 800, 800, 300);
}

void quadraticGraph()
{
  scale(1, -1);
  translate(width/2, -height/2);
  for (float x = 0; x<400; x = x+0.05)
  {
    float y;
    y = (a*x*x)+(b*x)+150+cIntercept;
    ellipse(x, y, 2, 2);
    fill(146, 146, 206);
    rect(0, 800, 800, 300);
  }
  for (float x = 0; x>-400; x = x-0.05)
  {
    float y;
    y = (a*x*x)+(b*x)+150+cIntercept;
    ellipse(x, y, 2, 2);
    fill(146, 146, 206);
    rect(0, 800, 800, 300);
  }
  resetMatrix();
  fill(146, 146, 206);
  rect(0, 800, 800, 300);
}

void linearGraph()
{ 
  scale(1, -1);
  translate(width/2, -height/2);




  for (float x = 0; x<400; x = x+1)
  {
    float y;
    float p = -1;
    y = (a*x+150+cIntercept);  
    ellipse(x, y, 2, 2);
    fill(146, 146, 206);
    rect(0, 800, 800, 300);
  }
  for (float x = 0; x>-400; x = x - 1)
  {
    float y;
    y = a*x+150+cIntercept ;
    ellipse(x, y, 2, 2);
    fill(146, 146, 206);
    rect(0, 800, 800, 300);
  }
  scale(1, 1);
  translate(0, 0);
  resetMatrix();
  drawAxes();
  labelAxes();
  fill(146, 146, 206);
  rect(0, 800, 800, 300);
}

void keyPressed()
{ 
  println("keyPressed");
  if (key == 'd')
  {
    a = a+0.09;
    println(a);
  }
  if (keyCode == LEFT)
  {
    c = c - 0.05;
  }
  if (keyCode == RIGHT)
  {
    c = c + 0.05;
  }
  if (key == 'a')
  {
    a = a-0.09;
  }
  if (key == 'w')
  {
    cIntercept = cIntercept - 3;
  }
  if (key == 's')
  {
    cIntercept = cIntercept +3 ;
  }
  if (keyCode == UP)
  {
    b++;
  }
  if (keyCode == DOWN)
  {
    b--;
  } 
  if (key == 'a')
  {
    t = t - 10;
  }
  if (key == 'd')
  {
    t = t +10;
  }
  if (key == '1')
  {
    a = 1;
    b = 0;
    c = 0;
    d = 1;
    t = 40;
    cIntercept = 0;
    linear = true;
    quadratic = false;
    cubic = false;
    sine = false;
    tangent = false;
    exp = false;
  }
  if (key == '2')
  {
    a = 0.05;
    b = 0;
    c = 0;
    d = 1;
    t = 40;
    cIntercept = 0;
    linear = false;
    quadratic = true;
    cubic = false;
    sine = false;
    tangent = false;
    exp = false;
  }
  if (key == '3')
  {
    a = 0.08;
    b = 0;
    c = 0;
    d = 1;
    t = 40;
    cIntercept = 0;
    linear = false;
    quadratic = false;
    cubic = true;
    sine = false;
    tangent = false;
    exp = false;
  }
  if (key == '4')
  {
    a = 1;
    b = 0;
    c = 0.4;
    d = 1;
    t = 40;
    cIntercept = 0;
    linear = false;
    quadratic = false;
    cubic = false;
    sine = true;
    tangent = false;
    exp = false;
  }
  if (key == '5')
  {
    a = 1;
    b = 0;
    c = 0.5;
    d = 1;
    t = 40;
    cIntercept = 0;
    linear = false;
    quadratic = false;
    cubic = false;
    sine = false;
    tangent = true;
    exp = false;
  }
  if (key == '6')
  {
    a = 1;
    b = 0;
    c = 0;
    d = 1;
    t = 40;
    cIntercept = 0;
    linear = false;
    quadratic = false;
    cubic = false;
    sine = false;
    tangent = false;
    exp = true;
  }

  println(cIntercept);
  println(b);
}
