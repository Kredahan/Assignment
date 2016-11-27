import ddf.minim.*;
PImage bg;

Minim minim;
AudioPlayer theme;
AudioPlayer click;

//Rotating Arc Variables
int xCo = 960; //x coordinates
int yCo = 540; //y coordinates
int lar = 300; //width
int alt = 300; // height
int ang = 1; // angle to start
int ang2 = 1;
int ang3 = 1;
boolean menu = true;

void setup() 
{
  size(1920,1080);
  bg = loadImage("illusive.jpg");
  
  minim = new Minim(this); //Looping the theme to play while the program is running
  theme = minim.loadFile("Map.mp3");
  theme.loop();
  click = minim.loadFile("click.mp3");
}

void mouseClicked()
{
    click.play();
}

void draw() 
{
   background(bg);  
      fill(232,56,7,40);
   rect(0,0,1920,1080);
   stroke(247,159,25,150);
   noFill();
   strokeWeight(3);
   ellipse(960,540,width -200,width - 200);
   strokeWeight(2);
   ellipse(960,540,width -600,width - 600);
   strokeWeight(40);
   ellipse(960,540,width -1000,width - 1000);
   
   fill(247,159,25,100);
   stroke(255,238,78,80);
   strokeWeight(20);
   beginShape();
   vertex(380,1080);
   vertex(430,880);
   vertex(500,820);
   vertex(1420,820);
   vertex(1490,880);
   vertex(1540,1080);
   endShape(CLOSE); 
   
   //Rotating Arcs
   stroke(255,174,23,150);
   strokeWeight(10);
   smooth();
   noFill();
    
   ang += 1;
   ang2 += 2;
   ang3 += 3;
  
   arc(xCo,yCo,lar,alt, radians(ang), radians(ang+300));
   arc(xCo,yCo,lar+30,alt+30, radians(-ang2), radians(-ang2+150));
   arc(xCo,yCo,lar+60,alt+60, radians(ang3), radians(ang3+200));
   arc(xCo,yCo,lar+200,alt+200, radians(-ang2), radians(-ang2+300));
   arc(xCo,yCo,lar+220,alt+220, radians(ang), radians(ang+100));
   arc(xCo,yCo,lar+250,alt+250, radians(-ang3), radians(-ang3+300));
   arc(xCo,yCo,lar+500,alt+500, radians(ang), radians(ang+150));
   arc(xCo,yCo,lar+510,alt+510, radians(-ang2), radians(-ang2+200));
   
   menuButtons();
   
}

void menuButtons()
{
  buttonInit();
  
  if(menu == true)
  {
    fill(255,174,23,220);
    rect(button1[0],button1[1],button1[2],button1[3]);        
    rect(button2[0],button2[1],button2[2],button2[3]);
    rect(button3[0],button3[1],button3[2],button3[3]);
    rect(button4[0],button4[1],button4[2],button4[3]);
  }
}