
int i;
int stop = 0;

String shipinfo = "The SSV Normandy SR-1 (Systems Alliance Space Vehicle Normandy Stealth Reconnaissance-1) was a Systems Alliance starship. She is a prototype deep scout frigate, first of the eponymous Normandy class, co-developed by the Alliance and the Turian Hierarchy with the sponsorship of the Citadel Council. Optimized for solo reconnaissance missions deep within unstable regions, using state-of-the-art stealth technology powered by an experimental drive core.";

void stars()
{
 
  if(shipdiag == true)
  {
    strokeWeight(2);
    stroke(0,0,0,160);
    fill(137,10,44,150);
    rect(width-454,height/8,350,700);
    fill(255);
    textSize(24);
    text(shipinfo,width-450,height/8,350,700);
    strokeWeight(15);
    stroke(0,0,0,150);
    fill(0);
    rect(width/4,180,width/2,610);
    image(normandy,560,height/4,800,400);
    
     if(stop == 0)
     {
       for(i = 0; i < 222; i++)
       {
         noStroke();
         fill(255,255,255,random(20,255));
         ellipse(random(480,1440),random(270,810),random(1,5),random(1,5));
       }//end for loop 
     }//end inner if
 
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
         shipdiag = false;
       } // end inner if
     
     
     }// end outer if
     else
     {
       backbuttoncol = color( 247,159,25,100);
     } //end else
     
  }//end if(shipdiag == true)
 
}//end function stars() 