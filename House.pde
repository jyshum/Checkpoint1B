Star[] myStars;
int numstars;

// color pallette
color sky = #A4DEE8; 
color bush = #4E7951;
color base = #8E8E8E;
color roof = #58534B;
color window = #C6C0B4;
color door = #644F27;
color staircase = #5A564D;
color sun = #E1E37E;
color sun1 = #E6E894;

//global variables
int x; // 1, 8, 103
int y; 
float w; // decimals: 1.1, 6.9
boolean f; //true or false

//aniamtion variables
float sunY;
float sunX;
boolean day;

void setup() {
  
  size(800,800); //size of the interface
  noStroke();
  numstars = 100;
  myStars = new Star[numstars];
  
  int i = 0;
  while (i < numstars) {
    myStars[i] = new Star();
    i = i + 1;
  }
  
  sunY = 600;
  sunX = 100;
  
}

void draw() {
  
  if (sunY < -100) {
   sunY = 600;
   sunX = 100;
  }
  
  background(sky); //background

  sunY = sunY - 2;
  sunX = sunX + 0.5;
  pushMatrix();
  sun(sunX, sunY);
  popMatrix();
  
  int i = 0;
  while (i < numstars) {
    myStars[i].show();
    myStars[i].act();
    i = i + 1;
  }
  
  stroke(5);
  fill(255);
  quad(0, 500, width, 600,  width, height, 0, height); // x1, y1, x2, y2, x3, y3, x4, y4 -- This is also the ground
  
  quad(400,400, 430,200, 460,200, 460,400); // x1,y1, x2,y2, x3,y3, x4,y4 -- chimney
  rect(430,200,30,10); // chimneyTOP
  
  fill(base);
  rect(200,350,300,300); // x1,y1, width, height -- House's base
  
  fill(roof);
  quad(150,300, 550,350, 550,380, 150, 380); // x1,y1, x2,y2, x3,y3, x4,y4 -- Roof
  
  fill(window);
  rect(240,400,100,150); // x1,y1, wdith, height -- Window
  
  line(240,475, 340,475); // x1,y1, x2,y2 -- Window Lines1
  line(290,400, 290,550); // x1,y1, x2,y2 -- Window Lines2
  
  fill(door);
  rect(400,500,80,140); // x1,y1, width, height -- Door
  circle(470,580,8); // x1,y1-- Door Knob
  
  fill(staircase);
  quad(390,640, 490,640, 490,660, 360,660); // -- Staircase
  
  fill(bush);
  ellipse(600,580,100,50);
  ellipse(620,600,70,20);

}

void sun(float x, float y) {
  
  translate(x,y);
  noStroke();
  fill(sun1);
  ellipse(0,0,70,70);
  fill(sun);
  ellipse(0,0,60,60);
  
}
