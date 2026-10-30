boolean shake = true;
Pshape drawing;

void setup() {
  size(400, 400);
  //Load the drawing file to the data folder
  drawing  = loadShape("drawing.svg");
}

void draw() {
  background(255);
  
  shape(drawing, 50, 50);

  stroke(0);
  strokeWeight(2);

  float jitter = shake ? 10 : 0;

  line(
    50 + random(-jitter, jitter),
    200 + random(-jitter, jitter),
    350 + random(-jitter, jitter),
    200 + random(-jitter, jitter)
  );
}
