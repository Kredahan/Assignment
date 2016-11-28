int[] chest = new int[5]; //initialising invisible buttons for each section of the body for armor to be applied
int[] glove1 = new int[5];
int[] glove2 = new int[5];
int[] legs = new int[5];
int[] helmet = new int[5];

color glove1col = color( 64,8,23,20);
color glove2col = color( 247,159,25,120);
color chestcol = color( 247,159,25,20);
color legscol = color( 247,159,25,120);
color helmetcol = color( 247,159,25,120);

boolean cheston = false;
boolean glove1on = false;
boolean glove2on = false;
boolean legson = false;
boolean helmeton = false;

void armorinit()
{
 chest[0] = 905; //x-coordinate of first button
 chest[1] = 270; // y-coordinate of first button
 chest[2] = 100; // width of first button
 chest[3] = 170; // height of first button
 chest[4] = 0;  // whether of not the button is being hovered over by the mouse, set to 1 if the conditions are true
 
 glove1[0] = 840; 
 glove1[1] = 410; 
 glove1[2] = 50; 
 glove1[3] = 50; 
 glove1[4] = 0; 
 
 glove2[0] = 840; 
 glove2[1] = 410; 
 glove2[2] = 50; 
 glove2[3] = 50; 
 glove2[4] = 0; 
 
 legs[0] = 840; 
 legs[1] = 410; 
 legs[2] = 50; 
 legs[3] = 50; 
 legs[4] = 0; 
 
 helmet[0] = 840; 
 helmet[1] = 410; 
 helmet[2] = 50; 
 helmet[3] = 50; 
 helmet[4] = 0; 


 
}


void armorydisplay()
{
  armorinit();
 if(armoryscreen == true) //Armory Screen
  {
      strokeWeight(3);
      stroke(0,0,0,180);
      fill(64,8,23,220);
      rect(710,100,500,700);
      image(hologram,820,200);
      
      noStroke();
      fill(glove1col);
      rect(glove1[0],glove1[1],glove1[2],glove1[3]); 
      fill(chestcol);
      rect(chest[0],chest[1],chest[2],chest[3]);
      
     if(mouseY <= (glove1[1] + glove1[3]) && mouseY >= (glove1[1]) && mouseX <= (glove1[0] + glove1[2]) && mouseX >= (glove1[0])) //Left Glove Button
    {
      glove1col = color(255,174,23,220);
      
      if(mousePressed)
      {
        click.play();
        click.rewind();
        glove1on = true;
        
      }
     
    }
    else
    {
      glove1col = color(64,8,23,20);
    }
    
    if(glove1on == true)
    {
     image(omni,glove1[0] + 3 ,glove1[1] - 45 ,60, 100); 
    }
    
    
    if(mouseY <= (chest[1] + chest[3]) && mouseY >= (chest[1]) && mouseX <= (chest[0] + chest[2]) && mouseX >= (chest[0])) //Left Glove Button
    {
      chestcol = color(255,174,23,220);
      
      if(mousePressed)
      {
        click.play();
        click.rewind();
        cheston = true;
        
      }
     
    }
    else
    {
      chestcol = color(64,8,23,20);
    }
    
    if(cheston == true)
    {
      image(chestplate,chest[0] - 220,chest[1] - 90,370,370);
    }
      
      
      
  } 
  
}