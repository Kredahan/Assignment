import ddf.minim.*;
import processing.opengl.*;
PImage bg;

Minim minim;
AudioPlayer theme;
AudioPlayer click;

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
}