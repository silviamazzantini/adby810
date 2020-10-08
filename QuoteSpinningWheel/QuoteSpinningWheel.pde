float rotation = 1, stepSize = 15;
float r=random(-30, 30);
float triangleX1, triangleX2;
float triangleY1, triangleY2;
String println;
boolean moving=true;
float background;
void setup() {
  size(2000, 1500);
}
void draw() {
  background(255);
  strokeWeight(2);
  fill(135, 100, 100);
  circle(width/2, height/2, 1500);
  strokeWeight(20);
  line(width/2, height/2, 1000, 0);
  line(width/2, height/2, 1000, 1500);
  line(width/2, height/2, 1742, 750);
  line(width/2, height/2, 257, 750);
  fill(255, 255, 255);
  textSize(100);
  text("Happiness", 400, 525);
  fill(255, 255, 255);
  textSize(100);
  text("Sadness", 1150, 1090);
  fill(255, 255, 255);
  textSize(90);
  text("Inspirational", 1100, 530);
  fill(255, 255, 255);
  textSize(100);
  text("Love", 600, 1090);

  pushMatrix();
  translate(width/2, height/2);
  if (moving) {
    rotate(radians(rotation));
    line(0, 0, 100, 100);
    triangle(5, 105, 109, 10, 126, 145);
    rotation += stepSize;
    stepSize += random(0.1, 0.99);
  } else {
    pointToStop();
  }
  popMatrix();
  fill(90, 95, 115, 100);
  float xPos   = 10;
  float yPos   = 20;
  float sSize  = 100;
  for (int i=0; i<8; i=i+1) {
    triangle(xPos + random(10, 20), yPos + random(10, 25), 
      xPos + sSize + random(10, 20), yPos + random(10, 20), 
      xPos + sSize + random(10, 20), yPos + sSize + random(10, 25));
    xPos = xPos + 250; }
  radians(rotation);
  radians((rotation)%TWO_PI); }
void mouseClicked() {
  moving = !moving; }
void pointToStop() {
  background(0);
  if
    (radians(rotation)%TWO_PI < HALF_PI) {
    fill(255, 255, 255);
    textSize(25);
    text("Sad:", 10, -150);
    textAlign(CENTER);
    text("'You cannot protect yourself from sadness without protecting yourself from happiness'", 50, 90);
    textAlign(CENTER);
    text("Jonathan Safran Foer", 10, 10);
    textAlign(CENTER);
  } else if
    (radians(rotation)%TWO_PI < PI) {
    fill(255, 255, 255);
    textSize(25);
    text("Love:", 10, -150);
    textAlign(CENTER);
    text("It was only a sunny smile, and little it cost in the giving, but like morning light it scattered the night and made the day worth living.", 70, 250);
    textAlign(CENTER);
    text("F. Scott Fitzgerald", 10, 10);
    textAlign(CENTER);
  } else if
    (radians(rotation)%TWO_PI < PI+HALF_PI) {
    fill(255, 255, 255);
    textSize(25);
    text("Happiness:", 10, -150);
    textAlign(CENTER);
    text("'Two things prevent us from happiness; living in the past and observing others.'", 50, 90);
    textAlign(CENTER);
    text("Anonymous", 10, 10);
    textAlign(CENTER);
  } else {
    fill(255, 255, 255);
    textSize(25);
    text("Inspirational:", 10, -150);
    textAlign(CENTER);
    text("'You may shoot me with your words, You may cut me with your eyes, You may kill me with your hatefulness, But still, like air, I’ll rise.'", 50, 220);
    textAlign(CENTER);
    text("Maya Angelou", 10, 10);
    textAlign(CENTER); }
}
