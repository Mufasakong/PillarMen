int[] x = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
float[] randomList = {floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length)))};
void setup(){
size(500,500);
background(179, 230, 255);

}

void draw(){
display(0, (randomList));
//println(randomList.length);
println(randomList);

}

void display(float plads, float[] x){
float value = x[int(plads)];
noStroke();
rect(50+40*plads,height,30,-20*value);
if(plads<x.length-1){
  display(plads+1,x);
  }
}
