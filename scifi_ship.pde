
int i;
int stop = 0;

void stars()
{
 
  if(shipdiag == true)
  {
    
    fill(0);
    rect(width/4,270,width/2,610);
    
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