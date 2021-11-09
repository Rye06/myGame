/**
 * Space Ship 
 * Made by Shaurya(Rye)
 **/


void setup() 
{ 
  /****************************************************
    Function to set up configuration for the program
  ****************************************************/
  
  size(600, 600); //size of window
  background(0); //background of window

  smooth(); //drew shapes with smooth (anti-aliased) edges.
  textSize(23); //sets text size

  drawsShip(); //calls to draw the ship
}

void drawsShip() {

  /****************************************************
            Function to Draw the Space Ship 
  ****************************************************/
  //--------------------------------------------------------------------------------------  
  /**** Standard/Common Dimensions to be used ****/
  
  int mainBodyX = width-120;
  int mainBodyY = height-200;

  int entrancePosX = mainBodyX - 199 ;
  int entrancePosY = mainBodyY-30;
  int entranceWid = entrancePosX-251;
  int entranceLen = entrancePosY-340;

  int lineX = mainBodyX-200;
  int lineY = mainBodyY-200;
  
  int rectX = 15;
  int rectY = 15;
  
  int diameter = 5;

  //--------------------------------------------------------------------------------------
  /**** Main Body ****/
  
  //styling of main body
  stroke(0);
  strokeWeight(2);
  fill(142, 159, 174);

  triangle(mainBodyX, mainBodyY, mainBodyX-400, mainBodyY, mainBodyX-200, mainBodyY-200); //constructs main body

  //--------------------------------------------------------------------------------------
  /**** Entrance Door ****/
  
  //styling of the entrance door top circle
  fill(0);

  ellipse(entrancePosX, entrancePosY, entranceWid, entranceLen); //constructs top circle of the door

  //Inners of the entrance door
  
  //styling of inners of the entrance door
  fill(255);

  //Dimensions for the translation of the x and y coordinates for the inner rectangle in the entrance door
  float xTransRectEntrance = 282;
  float yTransRectEntrance = -64.7;

  pushMatrix();

  translate(xTransRectEntrance, yTransRectEntrance);
  rotate(radians(45));
  rect(entrancePosX+19, entrancePosY-70, rectX, rectY);// constructs the inner rectangle

  popMatrix();

  ellipse(entrancePosX+.5, entrancePosY-.5, diameter,diameter); //constructs the inner circle

  //--------------------------------------------------------------------------------------
  /**** Inner Design ****/
  
  //Dimensions for the lines
  int designY = 40;
  int yMinus = 10;
  int designX = 20;

  for (int s = 0; s < 3; s++) {
    if (s > 0) {
      line(lineX, lineY+designY, mainBodyX+designX, mainBodyY-yMinus);
      yMinus+= 3;
      designX = -425;
    }
    line(lineX, lineY, lineX, lineY+40);
  }//draws 3 lines for inner design

  //develops inner design
  line(lineX+57, lineY+80, mainBodyX-30, mainBodyY);
  line(lineX-59, lineY+80, mainBodyX-370, mainBodyY);

  //Falconer Text

  //styling for "F A L C O N E R" text
  fill(255);

  text("F A L C O N E R", mainBodyX-265, mainBodyY-60); //writes "F A L C O N E R" on the ship
  
  //5467 Text

  //styling for the number 5467
  textSize(30);

  //writes the number "5 4 6 7" on the ship
  String content = " 5 4";
  int textX = 300;
  int textY = 20;
  
  for(int j = 0; j < 2; j++) 
  {
    text(content, mainBodyX-textX, mainBodyY-textY);
    textX-=155;
    textY += 2;
    content = " 6 7 ";
  }
  
  //--------------------------------------------------------------------------------------
  /**** Pilot Seats ****/
  
  //styling for pilot seats
  stroke(0, 255, 0);
  strokeWeight(5);

  //Dimensions of Pilot seat
  int pilotX = 20;
  int pilotY = 40;

  for (int i = 0; i <= 1; i++) 
  {
    point(lineX-pilotX, lineY+pilotY);
    pilotX*= -1;
  }//constructs pilot seats

  //--------------------------------------------------------------------------------------
  /**** Front Windows ****/
  
  //styling of front windows
  fill(255, 165, 0);
  stroke(0);
  strokeWeight(2);

  // translate the front windows
  int xTransWindow = 5;

  //constructs the front windows

  translate(xTransWindow, 0);
  quad(lineX-50, lineY+95, lineX-40, lineY+80, lineX-25, lineY+80, lineX-32, lineY+93);

  translate(xTransWindow*-2, 0);
  quad(lineX+50, lineY+95, lineX+40, lineY+80, lineX+25, lineY+80, lineX+32, lineY+93);

  translate(xTransWindow*-2 / -2, 0);
  rect(lineX-8, lineY+80, rectX, rectY+14);

  //--------------------------------------------------------------------------------------
  /**** Wings ****/
  
  //styling of the wings
  fill(255, 255, 241);
  stroke(0);
  strokeWeight(2);

  //constructs the wings
  triangle(mainBodyX-285, mainBodyY-115, mainBodyX-465, mainBodyY-30, mainBodyX-399, mainBodyY);
  triangle(mainBodyX-115, mainBodyY-115, mainBodyX+66, mainBodyY-30, mainBodyX, mainBodyY-1);

  //--------------------------------------------------------------------------------------
  /**** Details on the Left Wing ****/

  //styling of details on the left wing
  stroke(0, 0, 255);
  strokeWeight(2);

  //Dimensions for the details on the left wing
  int detailWingX1L = 340;
  int detailWingY1L = 60;
  int detailWingX2L = 355;
  int detailWingY2L = 79;

  for (int k = 0; k <= 2; k++) 
  {
    if (k == 2) 
    {
      detailWingX1L += 5;
      detailWingX2L += 65;
      detailWingY1L-=55;
      detailWingY2L += 15;
    } 
    else if (k ==1) 
    {
      detailWingX1L += 55;
      detailWingX2L += 15;
      detailWingY2L -= 50;
    }

    line(mainBodyX-detailWingX1L, mainBodyY-detailWingY1L, mainBodyX-detailWingX2L, mainBodyY-detailWingY2L);
  }//constructs the details on the left wing

  //--------------------------------------------------------------------------------------
  /**** Details on Right Wing ****/

  //Dimensions for the details on the right wing
  int detailWingX1R = 60;
  int detailWingY1R = 60;
  int detailWingX2R = 35;
  int detailWingY2R = 77;

  for (int l = 0; l <= 2; l++) 
  {
    if (l == 2) 
      {
        detailWingX1R -= 28;
        detailWingY1R-=25;
        detailWingX2R += 45;
        detailWingY2R -= 20;
        detailWingX2R*=-1;
      } 
      else if (l ==1) 
      {
          detailWingX1R -= 25;
          detailWingY1R -= 25;
          detailWingX2R -= 35;
          detailWingY2R -= 19;
        }

      line(mainBodyX-detailWingX1R, mainBodyY-detailWingY1R, mainBodyX-detailWingX2R, mainBodyY-detailWingY2R);
  }//constructs the details on the right wing

  //--------------------------------------------------------------------------------------

  //CODE FINISHED
  
} //draws space ship
