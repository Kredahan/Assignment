# Assignment
My Mass Effect 2 inspired User Interface

My program was designed to mimic the menu systems in Mass Effect 2 to a certain extent, some parts are inspired while others are my own designs, however none of it was designed to look exactly like it, instead it was desgned so as to follow the same theme.
Recurring elements can be found in the aesthetic of the Interface, such as the rotating arcs in the background, the semi transparent shapes and windows, the orange colour scheme and the highlighting buttons.

The scifi_main section of the code contains the setup(), draw() and menu_buttons() functions. All the image and sound variables are initialised in the upper sections of the code, as well as further defined in setup(). All the functions from the other tabs are called in draw() because it loops indefinitely. The draw function also draws the arcs and custom shape at the bottom of the screen.
The menu_buttons() function draws the four buttons on the screen, which change colour when the mouse hovers over them and play a sound when the button is clicked. More importantly, they also link to the other pages of the program.
The scifi_planets section of the code contains the orbit() and planetdisplay() functions. The orbit function incorporates the OPENGL library to allow 3D drawings to be created. I had been practicing with basic shape transformation and push/pop matrix usage with 3D shapes for the last month and a half when I realised you could choose the rendering mode in the size() initialiser. I created two pasic spheres and wrapped planet textures around them. Then I translated the position of the first sphere to the center of the page so it was just rotating in place. Then I translated the second sphere relative to the first with different coordinates, without popping the matrix. This made it orbit around the other sphere.
The displayplanets function sets up the layout of the page.
This was an indepth example of the programs functionality. The program also has an armory where you can equip pieces of armor on a skeleton, a ship diagnostics section that displays the ship in space and some facts about the ship, and a simple exit function that plays a message before leaving the program.

[![Video](http://img.youtube.com/vi/ksrV3a7ZCJM/0.jpg)](https://www.youtube.com/watch?v=ksrV3a7ZCJM&feature=youtu.be)
