boolean shake = true;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);

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
