float inc = 0; // a float used to change the rotation smoothly, by allowing incrementation

PImage omega;
PImage noveria;
PShape globe;
PShape globe2;

void orbit()
{
  inc+=0.02;
  pushMatrix();
  translate(width/2,height/2, 0);
  rotateY(inc);
  rotateX(inc);
  noStroke();
  shape(globe);
  translate(200,20,0);
  rotateY(inc);
  rotateX(inc);
  shape(globe2);
  popMatrix();
}