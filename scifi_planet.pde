float inc = 0; // a float used to change the rotation smoothly, by allowing incrementation

PImage omega;
PImage noveria;
PShape globe;
PShape globe2;

String omegaplanet = "Omega has been a haven for criminals, terrorists, and malcontents for thousands of years. At times the station has lain idle and abandoned for centuries, only to be reactivated by a new group of outlaws seeking a fresh start.Its orbiting moon is Noveria, a barren planet used for the production of pharmaceuticles\n Galaxy: Milky Way\n Population: 7.8 million\n Orbital Distance: 2.43 AU\n Orbital Period: 6.9 Earth Years\n Total Length: 44.7 Km";

void orbit()
{
  inc+=0.02;
  pushMatrix();
  translate(width/2,height/2, 200);
  rotateY(inc);
  rotateX(inc);
  noStroke();
  shape(globe);
  translate(200,20,150);
  rotateY(inc);
  rotateX(inc);
  shape(globe2);
  popMatrix();
}

void planetdisplay()
{
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
        click.play();
        click.rewind();
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