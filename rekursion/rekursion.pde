int[] tal = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int index = 0;
int antalTryk = 0;

IntList list = new IntList();
int[] talListe;

public void setup() {
  size(400, 400);
  frameRate(10);
  list.append(tal);
  list.shuffle(this);
  talListe = list.array();
}

public void draw() {
  clear();
  background(179, 230, 255);
  display(0, talListe);
}

public void mouseClicked() {
  if (antalTryk <= 9){
  int max = findMax(talListe, index, index);
  swap(talListe, index, max);
  index++;
  antalTryk++;
  } else {
  println("Du har opbrugt dine tryk");
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
  text(talListe[place], 40*place+30/2, height+talListe[place]*-20);
  
  if (place < talListe.length-1) {
    display(++place, list);
  }
}

int findMax(int[] list, int pointer, int maxV) {
  if (pointer > list.length-2) {
    return maxV;
  }
  if (talListe[pointer+1]>talListe[maxV]) {
    return findMax(list, pointer+1, pointer+1);
  } else {
    return findMax(list, pointer+1, maxV);
  }
}

void swap(int[] list, int pointerA, int pointerB) {
  int valueA = list[pointerA];
  int valueB = list[pointerB];
  list[pointerA] = valueB;
  list[pointerB] = valueA;
}

  
