int[] chest = new int[5]; //initialising invisible buttons for each section of the body for armor to be applied
int[] gloves = new int[5];
int[] legs = new int[5];
int[] helmet = new int[5];


void armorinit()
{
 chest[0] = 760; //x-coordinate of first button
 chest[1] = 160; // y-coordinate of first button
 chest[2] = 400; // width of first button
 chest[3] = 200; // height of first button
 chest[4] = 0;  // whether of not the button is being hovered over by the mouse, set to 1 if the conditions are true
 
 gloves[0] = 840; 
 gloves[1] = 410; 
 gloves[2] = 50; 
 gloves[3] = 50; 
 gloves[4] = 0; 
 
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
      fill(232,56,7,40);
      rect(gloves[0],gloves[1],gloves[2],gloves[3]);
      image(omni,gloves[0] + 3 ,gloves[1] - 45 ,60, 100);
      
      
      
  } 
  
}