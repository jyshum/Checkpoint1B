// color pallette
color sky = #253355; 
color bush = #4E7951;
color base = #8E8E8E;
color roof = #58534B;
color window = #C6C0B4;
color door = #644F27;
color staircase = #5A564D;

//global variables
int x; // 1, 8, 103
float w; // decimals: 1.1, 6.9
boolean f; //true or false

//aniamtion variables
float starX;

void setup() {
sss
  size(800,800); //size of the interface
  
}

void draw() {

  background(sky); //background
  
  fill(255);
  noStroke();
  circle(100,100,5);
  circle(300,200,6);
  circle(600,300,4);
  circle(130,200,8);
  circle(200,300,3);
  circle(610,200,4);
  circle(410,250,2);
  circle(300,100,7);
  circle(130,290,6);
  circle(100,250,2);
  
  //starX = 2
  //if (starX > width) {
  //starX = -10;
  //}
  
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
