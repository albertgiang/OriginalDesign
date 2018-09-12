int landerY = 0;

void setup(){
  size(250,250);
  frameRate(50);
  buildMoon();
  buildSun();
}

void buildSun(){
  fill(#EBF22C);
  ellipse(225, 50, 25, 25);
}

void buildMoon(){
  fill(201,201,201);
  rect(-5,225,255,25);
}

void draw(){
  if(landerY < 201){
    background(0,0,0);
    buildMoon();
    buildSun();
    fill(201,201,201);
    buildLander(landerY);
    landerY = landerY+1;
    }
}

void buildLander(int landerY){
  quad(50, landerY, 200, landerY, 150, landerY-100, 100, landerY-100);
  quad(100, landerY, 150, landerY, 150, landerY - 75, 100, landerY - 75);
  quad(50, landerY, 75, landerY, 50, landerY + 25, 25, landerY + 25);
  quad(175, landerY, 200, landerY, 225,landerY + 25, 200, landerY + 25);
  textAlign(CENTER);
  fill(0);
  text("USA", 125, landerY - 85);
}

