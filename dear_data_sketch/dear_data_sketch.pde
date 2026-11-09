boolean shake = true;
PShape drawing;

void setup() {
  size(400, 400);
  //Load the drawing file to the data folder
  drawing  = loadShape("IMG-1113.svg");
}

void draw() {
  background(255);
  
  shape(drawing, 50, 50);

  stroke(0);
  strokeWeight(2);

  float jitter = shake ? 10 : 0;

  float x = random(-jitter, jitter);
  float y = random(-jitter,jitter);
  
  pushMatrix();
  translate(50 + x, 50 + y);
  
  shape(drawing, 0,0);
  
  popMatrix();
}
