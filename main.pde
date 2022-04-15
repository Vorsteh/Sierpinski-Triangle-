PVector[] startPoints = {new PVector(250, 50), new PVector(50, 450), new PVector(450, 450)};

float ellipseSize = 0.1;

Boolean drawn = false;

float time = 0;

int loop = 0;

void setup(){
  size(1000, 1000);
  background(0);
  
  stroke(255);
  strokeWeight(3);
  
  frameRate(1000);
  
  
  for(int i = 0; i < 3; i++){
    //ellipse(startPoints[i].x, startPoints[i].y, ellipseSize, ellipseSize);
    point(startPoints[i].x, startPoints[i].y);
  }
}

PVector lastPoint = new PVector(270, 150);


void draw(){
  stroke(255);
  strokeWeight(3);
  //ellipse(lastPoint.x, lastPoint.y, ellipseSize, ellipseSize);
  point(lastPoint.x, lastPoint.y);
  if(!drawn){
    int rp = (int) random(0,3); // Random point
    PVector result = middlePoint(startPoints[rp].x, startPoints[rp].y, lastPoint.x, lastPoint.y);
        
    fill(random(0, 255),random(0, 255),random(0, 255),random(0, 255));
    //ellipse(result.x, result.y, ellipseSize, ellipseSize);
    point(result.x, result.y);
        
    lastPoint = result;
    if(loop == 10000){
      drawn = true;
    }
    loop++;
  }
}



PVector middlePoint(float x1, float y1, float x2, float y2){
  float x = (x1 + x2) / 2;
  float y = (y1 + y2) / 2;
  return new PVector(x, y);
}
