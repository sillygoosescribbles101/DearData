boolean shake = true;
float jitter = 10;
float speed = 1;
float strokeWidth = 2;
color lineColor;
float x;
float y;

void setup() {
  size(400, 400);
  
  x = width / 2;
  y = height / 2;

  lineColor = color(0);

}

void draw() {
  background(255);

  float amount = shake ? jitter : 0;

  float x = random(-amount, amount);
  float y = random(-amount, amount);

  pushMatrix();
  translate(50 + x, 50 + y);

  stroke(lineColor);
  strokeWeight(strokeWidth);

}

void keyPressed () {
  if (key == ' ') {
    jitter = random (2, 30);
    speed= random (1, 10);
    strokeWidth = random (1, 8);
    lineColor = color (
      random(255),
      random(255),
      random(255)
      );

    shake = true;
  }
}
