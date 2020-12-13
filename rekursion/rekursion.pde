int[] tal = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
IntList list = new IntList();
int index = 0;

public void setup() {
  size(400, 400);
  list.append(tal);
  list.shuffle();
  tal = list.array();
}

public void draw() {
  clear();
  background(179, 230, 255);
  display(0, tal);
  println(index);
  
  if (index == 10) {
  fill(200, 20, 20);
  text("Søjlerne er sorteret \n højreklik for at shuffle dem igen", width/2, height/2-100);
  }
}

public void mouseReleased() {
  if (index <= 9){
  int max = findMax(tal, index, index);
  swap(tal, index, max);
  index++;
  } 
  
  if (mouseButton == RIGHT) {
  index = 0;
  list.shuffle();
  tal = list.array();
  }
}

public void display(int place, int[] list) {
  int value = list[place];
  
  noStroke();
  fill(255);
  rect(40*place, height, 30, -20*value);
  
  fill(0);
  textSize(25);
  textAlign(CENTER);
  text(list[place], 40*place+30/2, height+list[place]*-20);
  
  if (place < list.length-1) {
    display(++place, list);
  }
}

public int findMax(int[] list, int pointer, int maxV) {
  if (pointer > list.length-2) {
    return maxV;
  }
  
  if (list[pointer+1]>list[maxV]) {
    return findMax(list, pointer+1, pointer+1);
  } 
  
  else {
    return findMax(list, pointer+1, maxV);
  }
}

public void swap(int[] list, int pointerA, int pointerB) {
  int valueA = list[pointerA];
  int valueB = list[pointerB];
  list[pointerA] = valueB;
  list[pointerB] = valueA;
}

  
