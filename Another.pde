final int wHeight = 1000;
final int wWidth = 1000;

PVector[] startPoints = {new PVector(250, 50), new PVector(50, 450), new PVector(450, 450)};
PVector[] startPoints2 = {new PVector(wWidth/2, 50), new PVector(50, wHeight-50), new PVector(wWidth-50, wHeight-50)};

float ellipseSize = 0.1;

Boolean drawn = false;

int loop = 0;

void setup(){
  size(1000, 1000);
  background(0);
  
  stroke(255);
  strokeWeight(3);
  
  frameRate(1000);
  
  
  for(int i = 0; i < 3; i++){
    //ellipse(startPoints[i].x, startPoints[i].y, ellipseSize, ellipseSize);
    
    //point(startPoints[i].x, startPoints[i].y);
    ellipse(startPoints2[i].x, startPoints2[i].y, 10, 10);
    
  }
}


PVector lastPoint = new PVector(wWidth * 0.5, wHeight * 0.5);


void draw(){
  //stroke(255);
  //strokeWeight(3);
  noStroke();
  
  fill(random(0, 200),random(0, 5),random(0, 200));
  ellipse(lastPoint.x, lastPoint.y, 5, 5);
  //point(lastPoint.x, lastPoint.y);
  
  if(!drawn){
    int rp = (int) random(0,3); // Random point
    //PVector result = middlePoint(startPoints[rp].x, startPoints[rp].y, lastPoint.x, lastPoint.y);
    PVector result = middlePoint(startPoints2[rp].x, startPoints2[rp].y, lastPoint.x, lastPoint.y);
        
    
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
