
int[] tal = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int pointer = 0;
int place = 0;

IntList list;

public void setup() {
  size(400, 400);
  list = new IntList();  
  list.append(tal);
  list.shuffle(this);
}

public void draw() {
  clear();
  background(179, 230, 255);
  display(list, 0);
  textSize(50);
  text("Pointer = "+ pointer, 50, 50);
  
  //println(inventory);
  println(pointer);
  //println(findMax(list, pointer, plads));
}

public void display(IntList lists, int place) {
  int value = lists.get(place);

  rect(40*place, height, 30, -20*value);
  //text();
  if (place<lists.size()-1) {
    display(lists, place+1);
  }
}

int findMax(IntList lists, int pointer, int indexMax) {
  if (pointer > lists.size()-2) {
    return int(indexMax);
  }
  if (lists.get(pointer+1) > lists.get(indexMax)) {
    return findMax(lists, pointer+1, pointer+1);
  } else {
    return findMax(lists, pointer+1, indexMax);
  }
}

void swap(IntList lists, int pointer, int indexMax) {
  int value1 = lists.get(pointer);
  int value2 = lists.get(indexMax);
  lists.set(lists.get(pointer), value2); 
  lists.set(lists.get(indexMax), value1); 
}

  public void mouseClicked() {
  swap(list, pointer, findMax(list, pointer, 0));
  if (pointer <= 11) {
    pointer++;
    if (pointer == 11) {
    pointer=0;
    }
  } 
}
