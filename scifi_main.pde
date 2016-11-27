import processing.opengl.*; 
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
boolean planetinfo = false;

String planettitle = "Planet Report";
String armory = "Armory";
String ship = "Ship Diagnostics";
String  exit = "Exit";
String back = "Back";

void setup() 
{
  size(1920,1080, P3D);
  bg = loadImage("illusive.jpg");
  smooth();
  
  minim = new Minim(this); //Looping the theme to play while the program is running
  theme = minim.loadFile("Map.mp3");
  theme.loop();
  click = minim.loadFile("click.mp3");
  
   omega = loadImage("plutomap.jpg");
   noveria = loadImage("jupitermap.jpg");
   globe = createShape(SPHERE, 150);
   globe2 = createShape(SPHERE, 40);
   globe.setTexture(omega);
   globe2.setTexture(noveria);
}

void mouseClicked()
{
    click.play();
}

void draw() 
{
   image(bg,0 ,0 ,width,height);  // the background image of a planet seen from the Illusive mans room in Mass Effect 2
   fill(232,56,7,40);
   /*rect(0,0,1920,1080);*/
   lights();// a light filter that covers the whole screen adding to the orange theme
   stroke(247,159,25,150);
   noFill();
   strokeWeight(3);
   ellipse(960,540,width -200,width - 200);
   strokeWeight(2);
   ellipse(960,540,width -600,width - 600);
   strokeWeight(40);
   ellipse(960,540,width -1000,width - 1000);
   
   fill(247,159,25,100); //Bottom Border
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
   stroke(255,174,23,120);
   strokeWeight(10);
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
   
   //Planet Information and 3D Orbiting
   if(planetinfo == true)
   {
     fill(64,8,23,200);
     ellipse(width/2,height/2,600,600);
     noStroke();
     noFill();
     
     orbit(); 
     fill(137,10,44,200);
    
     strokeWeight(1);
     stroke(0,0,0,180);
     rect(width-454,height/8,350,700);
     fill(255);
     textSize(25);
     text(omegaplanet,width-450,height/8,350,700);
     
     stroke(0,0,0, 120);
     strokeWeight(5);
   
     fill(backbuttoncol);
     rect(backbutton[0],backbutton[1],backbutton[2],backbutton[3]);
     fill(0,0,0,200);
     textSize(40);
     text(back, 150, 965);
     
     if(mouseY <= (backbutton[1] + backbutton[3]) && mouseY >= (backbutton[1]) && mouseX <= (backbutton[0] + backbutton[2]) && mouseX >= (backbutton[0])) //Planet Button
    {
      backbutton[4] = 1;
      backbuttoncol = color(255,174,23,220);
      
      if(mousePressed)
      {
        menu = true;
        planetinfo = false;
      }
     
     
   }
   else
    {
      backbuttoncol = color( 247,159,25,100);
    }
       
  } 
}

void menuButtons()
{
  buttonInit();
  
  if(menu == true)
  {
    
    stroke(0,0,0, 120);
    strokeWeight(5);
   
    fill(button1col);
    rect(button1[0],button1[1],button1[2],button1[3]);
    fill(0,0,0,200);
    text(planettitle, 835, 270);
    textSize(40);


    fill(button2col);
    rect(button2[0],button2[1],button2[2],button2[3]);
    fill(0,0,0,200);
    text(armory, 680, 480);
    textSize(40);

    
    fill(button3col);
    rect(button3[0],button3[1],button3[2],button3[3]);
    fill(0,0,0,200);
    text(ship, 1010, 480);
    textSize(40);

    
    fill(button4col);
    rect(button4[0],button4[1],button4[2],button4[3]);
    fill(0,0,0,200);
    text(exit, 920, 700);
    textSize(40);

    
    if(mouseY <= (button1[1] + button1[3]) && mouseY >= (button1[1]) && mouseX <= (button1[0] + button1[2]) && mouseX >= (button1[0])) //Planet Button
    {
      button1[4] = 1;
      button1col = color(255,174,23,220);
      
      if(mousePressed)
      {
        menu = false;
        planetinfo = true;
      }
     
    }
    else
    {
      button1col = color( 247,159,25,100);
    }
    
    if(mouseY <= button2[1] + button2[3] && mouseY >= button2[1] && mouseX <= button2[0] + button2[2] && mouseX >= button2[0]) //Armory Button
    {
      button2[4] = 1;
      button2col = color(255,174,23,220);
    }
    else
    {
      button2col = color( 247,159,25,100);
    }
    
    if(mouseY <= button3[1] + button3[3] && mouseY >= button3[1] && mouseX <= button3[0] + button3[2] && mouseX >= button3[0]) //Ship Button
    {
      button3[4] = 1;
      button3col = color(255,174,23,220);

    }
    else
    {
      button3col = color( 247,159,25,100);
    }
    
    if(mouseY <= button4[1] + button4[3] && mouseY >= button4[1] && mouseX <= button4[0] + button4[2] && mouseX >= button4[0]) //Exit Button
    {
      button4[4] = 1;
      button4col = color(255,174,23,220);

    }
    else
    {
      button4col = color( 247,159,25,100);
    }
  }
  
}