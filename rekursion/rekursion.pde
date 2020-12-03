int[] x = {0,1,2,3,4,5,6,7,8,9,10};
int plads = 0;

void setup(){
size(500,500);
background(179, 230, 255);
}

void draw(){
display(plads, x);

}

void display(int plads, int[] x){
int y = 0;
int b = 150;
int value = x[plads];
noStroke();
rect(40*plads,height,30,-20*value);
if(plads<x.length-1){
  display(plads+1,x);
}

/* if (b+y<650){
noStroke();
rect(0,b+y,20*getRek(x[5]),40);
println(getRek(x[5]));  
//println(x);'
y = y+50;}
*/
}

int getRek(int x){
if(x==1){
  return 1;
}else{
  return getRek(x-1)+x;
} 
}
