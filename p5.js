let talList;
let rand; 
let rystPosen = false;

//Vi har en liste og der bliver shufflet
function setup(){
  createCanvas(400,400);
  talList = [1,2,3,4,5,6,7,8,9,10]; 
  rand = talList;
}

// Vi får tegnet vores diagram på tilfældigt vis
function draw(){
  background(220);
  drawDiagram(rand);
  console.log(rystPosen);
}

// Sorteret eller ikke sorteret - det er spørgsmålet! 
function mousePressed(){
  rystPosen = !rystPosen;
  if (rystPosen) {
      rand = shuffle(talList);
      } else {
      rand = talList;
      }
}
//Her kommer det deklarative programmering på banen
function drawDiagram(list){
  list.filter(function(current,index,arr)
  {rect(10+35*index,400,30,-(current)*30)
  })
}
