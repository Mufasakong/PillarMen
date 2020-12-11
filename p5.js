let talList;
let rand; 

function setup(){
  createCanvas(400,400);
  talList = [1,2,3,4,5,6,7,8,9,10]; 
  rand = shuffle(talList);
}

function draw(){
  background(220);
  drawDiagram(rand);  
}

function drawDiagram(list){
  list.filter(function(current,index,arr)
  {rect(10+35*index,400,30,-(current)*30)
  })
}
