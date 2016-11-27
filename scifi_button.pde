int[] button1 = new int[5];
int[] button2 = new int[5];
int[] button3 = new int[5];
int[] button4 = new int[5];
int[]backbutton = new int[5];

color button1col = color( 247,159,25,120);
color button2col = color( 247,159,25,120);
color button3col = color( 247,159,25,120);
color button4col = color( 247,159,25,120);
color backbuttoncol = color( 247,159,25,120);

void buttonInit()
{
  button1[0] = 760; //x-coordinate of first button
  button1[1] = 160; // y-coordinate of first button
  button1[2] = 400; // width of first button
  button1[3] = 200; // height of first button
  button1[4] = 0;  // whether of not the button is being hovered over by the mouse, set to 1 if the conditions are true

  button2[0] = 550; //second button
  button2[1] = 375; 
  button2[2] = 400;
  button2[3] = 200; 
  button2[4] = 0;  

  button3[0] = 970; //third button
  button3[1] = 375; 
  button3[2] = 400;
  button3[3] = 200; 
  button3[4] = 0; 

  button4[0] = 760; //fourth button
  button4[1] = 590; 
  button4[2] = 400;
  button4[3] = 200; 
  button4[4] = 0;  
  
  backbutton[0] = 50; //back button
  backbutton[1] = 900; 
  backbutton[2] = 300;
  backbutton[3] = 100; 
  backbutton[4] = 0;  
}