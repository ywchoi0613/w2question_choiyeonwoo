float [] a,b,v;
void setup(){
  size(1500,800);
  a = new float[3];
  b = new float[3];
  a[0] = random(200,1300);
  a[1] = random(200,1300);
  a[2] = random(200,1300);
  b[0] = 0;
  b[1] = 0;
  b[2] = 0;
}
void draw(){
  background(120);
  v = new float[3];
  v[0] = 4;
  v[1] = 6;
  v[2] = 3;
  b[0] += v[0];
  b[1] += v[1];
  b[2] += v[2];
  if(b[0]==150) v[0] = -v[0];
  if(b[1]==150) v[1] = -v[1];
  if(b[2]==150) v[2] = -v[2];
  kumamon(a[0],b[0]);
  kumamon(a[1],b[1]);
  kumamon(a[2],b[2]);
  choi(mouseX);
  collide();
}
void collide(){
  if((mouseX-a[0])<200 && b[0]==float(635)) v[0] = -v[0];
  if((mouseX-a[1])<200 && b[1]==float(635)) v[1] = -v[1];
  if((mouseX-a[2])<200 && b[2]==float(635)) v[2] = -v[2];
}
