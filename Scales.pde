void setup(){
  size(1000, 600);
  background(#91d6ed);
  noLoop();
}

void draw(){
  boolean shift = false;
  for(int y = 40; y <= 600; y += 105) { 
    for(int x = 80; x < 1000; x+= 250) { 
      if (shift == false) {
        fish(x, y);
      } else {
        fish(x+100, y);
      }
    }
    if (shift == false) {
      shift = true;
    } else {
      shift = false;
    }
  } 
}

void fish(int x, int y){
  //tail
  fill(#faa87f);
  triangle(x+80, y, x+160, y-50, x+160, y+50);
  //body
  ellipse(x, y, 200, 150);
  //eyes
  fill(0);
  ellipse(x-40, y, 20, 20);
  fill(#ffffff);
  ellipse(x-45, y, 10, 10);
  noFill();
  //smile
  arc(x-60, y+20, 30, 30, radians(30), radians(150));
  //fin
  arc(x+10, y+10, 30, 30, radians(45), radians(315));
}
