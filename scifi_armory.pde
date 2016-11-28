int[] chest = new int[5]; //initialising invisible buttons for each section of the body for armor to be applied
int[] glove1 = new int[5];
int[] glove2 = new int[5];
int[] legs = new int[5];
int[] helmet = new int[5];


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
      fill(232,56,7,40);
      rect(glove1[0],glove1[1],glove1[2],glove1[3]);
      image(omni,glove1[0] + 3 ,glove1[1] - 45 ,60, 100);
      
      rect(chest[0],chest[1],chest[2],chest[3]);
      
      
      
  } 
  
}