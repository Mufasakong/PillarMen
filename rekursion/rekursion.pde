float[] x = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
float[] randomList = {floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length))), floor((random(x.length)))};

float plads = 0;
float pointer = 0;

void setup(){
size(500,500);
background(179, 230, 255);

}

void draw(){
display(randomList, plads);
//println(randomList.length);
println(randomList);
}

void mousePressed(){
  int storstIndex = findMax(randomList, plads, pointer);
  randomList = display(randomList, storstIndex);
  
  pointer = pointer +1;
}

float[] display(float[] list, float plads){
float value = list[int(plads)];
noStroke();
rect(50+40*plads,height,30,-20*value);
if(plads<x.length-1){
  display(list, plads+1);
  }
  return list;
}

int findMax(float[] list, float maxV, float pointer) {
  
  if (pointer > list.length-2) {
    return int(maxV);
  }
  
  if (list[int(pointer + 1)] > list[int(maxV)]){
    return findMax(list, pointer+1, pointer+1);
  }  else {
    return findMax(list, pointer+1, maxV);
    }
}
