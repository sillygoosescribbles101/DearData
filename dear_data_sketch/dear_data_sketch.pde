String[] data;
boolean shake = true;

void setup () {
  size(400, 400);
  data = loadStrings("mydata.txt");
}

void draw () {
  background (255);
  stroke(200);
  line(120, 80, 340, 300);

  float xPos = 40;
  float yPos = 50;
  float sSize = 90;

  for (int i=0; i<data.length; i++) {
    line (xPos, + random (-10, 10), yPos         + random(-10, 10),
      xPos + sSize + random(-10, 10), yPos         + random(-10, 10),
      xPos + sSize + random(-10, 10), yPos + sSize + random(-10, 10),
      xPos         + random(-10, 10), yPos + sSize + random(-10, 10));

    xPos = xPos + 100;
    text(data[i], 10, 10+(i*10));
  }
}
