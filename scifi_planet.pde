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