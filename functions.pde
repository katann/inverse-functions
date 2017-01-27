// Function Practice
// Kathy Washington
// Make a Boat

// Variables for a boat

int boatx = 50;
int boaty = 185;
int boatDX = 2;

void drawBoat (int x, int y) {
  //draw the sail
  fill (250, 246, 237); //color off white
  triangle(x+35, y-15, x+70, y-15, x+70, y-50);


  //color of the mast
  fill (234, 172, 36); // color brown
  rect (x+70, y-50, 10, 65);

  // color of boat
  fill (0, 255, 0); //Color Green
  quad (x, y, x+25, y+25, x+75, y+25, x+100, y); //hull

} // end drawBoat

//Create a function to draw a new shape

//Draw the water
void drawWater () {
  int x = 0;
  int y = height/2; // draw waterline at halfway
  fill (55, 26, 255); //blue
  rect (x, y, width, height/2); //water
} // end drawWater


//Two required functions
void setup () {
  size(600, 400); //600 X 400 canvas
  background(121, 52, 255); //sky
  drawWater();
  drawBoat(200,185);  //Boat #1
  drawBoat(350, 300); //boat #2
  drawBoat(50, 200); //boat #3
} //end setup

void draw() {
  background(121, 52, 255); //sky
  drawWater();

  boatx = boatx + boatDX;

  if (boatx + 100 > width || boatx <0) {
    boatDX = boatDX * -1;
  } // end if
  drawBoat(boatx, boaty);
} //end draw