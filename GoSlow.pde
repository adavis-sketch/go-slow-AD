Turtle t;

void setup() {
  size(600, 400); // the canvas size
  background(50); // a dark gray background

  // Your high-level code goes here
   t = new Turtle(this, 50, 50);
   letterG(1.0);
   nextLetter(1.0);
   letterO(1.0);
   nextLine();
   letterS(1.0);
   nextLetter(1.0);
   letterL(1.0);
   nextLetter(1.0);
   letterO(0.5);
   nextLetter(0.5);
   letterW(1.0);
   
   
   
  // End your high-level code here

  // This shows where the Turtle ends up
  t.render();
}

// Your methods can be defined down here

int sideLength = 100;
int halfSide = sideLength / 2;
int wSide = (int)(Math.sqrt(Math.pow(sideLength, 2) + Math.pow(halfSide, 2)));
int wHalf = wSide / 2;

void letterO(float scale){
   int sideO = (int)(sideLength * scale);
   int halfO = sideO / 2;
  
   t.forward(halfO);
   t.right(90);
   t.forward(sideO);
   t.right(90);
   t.forward(halfO);
   t.right(90);
   t.forward(sideO);
   t.right(90);
   t.forward(halfO);
   t.right(90);
   t.forward(sideO);
   t.left(90);
}

void letterG(float scale){
   int sideG = (int)(sideLength * scale);
   int halfG = sideG / 2;
  
  
   t.forward(sideG);
   t.left(180);
   t.forward(sideG);
   t.left(90);
   t.forward(sideG);
   t.left(90);
   t.forward(sideG);
   t.left(90);
   t.forward(halfG);
   t.left(90);
   t.forward(halfG);
   t.right(180);
   t.forward(halfG);
   t.right(90);
   t.forward(halfG);
   t.left(90);
}

void nextLetter(float scale){
  int nextSide = (int)(sideLength * scale);
  
   t.penUp();
   t.forward(halfSide);
   t.left(90);
   t.forward(nextSide);
   t.right(90);
   t.penDown();
}

void nextLine(){
  t.penUp();
  t.right(90);
  t.forward(halfSide);
  t.right(90);
  t.forward(2 * sideLength);
  t.right(180);
  t.penDown();
}

void letterS(float scale){
  int sideS = (int)(sideLength * scale);
  int halfS = sideS / 2;
  
  
  t.forward(halfS);
  t.right(180);
  t.forward(halfS);
  t.left(90);
  t.forward(halfS);
  t.left(90);
  t.forward(halfS);
  t.right(90);
  t.forward(halfS);
  t.right(90);
  t.forward(halfS);
  t.right(180);
  t.forward(halfS);
}

void letterL(float scale){
  int sideL = (int)(sideLength * scale);
  int halfL = sideL / 2;
  
  
  t.right(90);
  t.forward(sideL);
  t.left(90);
  t.forward(halfL);
}

void letterW(float scale){
  int sideW = (int)(wSide * scale);
  int halfW = sideW / 2;
  
  
  t.right(67);
  t.forward(sideW);
  t.left(135);
  t.forward(halfW);
  t.right(135);
  t.forward(halfW);
  t.left(135);
  t.forward(sideW);
  t.right(157);
  t.penUp();
  t.forward(sideLength);
  t.left(90);
  
}
