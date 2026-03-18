// Henrik Rohrwasser | Mar 18, 2026 | Miniproject


int slot1, slot2, slot3;
int timer = 0; 
String message = "Press SPACE to Spin";
PImage slotmachine;

void setup() {
  size(400, 200);
  slotmachine = loadImage("sm1.png");
  textAlign(CENTER, CENTER);
  textSize(32);
  spinSlots();
}

void draw() {
  background(50);
  
  image(slotmachine,0,0);
  if (timer > 0) {
    spinSlots();
    timer = timer - 1; // Count down
    message = "Spinning...";
  } else {
    message = "Press SPACE to Spin";
    
    if (slot1 == slot2 && slot2 == slot3) {
      fill(255, 215, 0); // Gold color
      textSize(32);
      text("YOU WIN!", width/2, 25);
    } else {
      fill(255);
      textSize(32);
      text("Spin...", width/2, 25);
    }
  }
  
  fill(255);
  rect(50, 50, 80, 80);
  rect(160, 50, 80, 80);
  rect(270, 50, 80, 80);
  
  fill(0);
  text(getSymbol(slot1), 90, 90);
  text(getSymbol(slot2), 200, 90);
  text(getSymbol(slot3), 310, 90);
  
  
  fill(255);
  textSize(20);
  text(message, width/2, 160);
}

// Key detection
void keyPressed() {
  if (key == ' ' && timer == 0) { 
    timer = 100; 
  }
}

void spinSlots() {
  slot1 = int(random(1, 10)); 
  slot2 = int(random(1, 10));
  slot3 = int(random(1, 10));
}

String getSymbol(int s) {
  if (s == 1) return "1";
  if (s == 2) return "2";
  if (s == 3) return "3";
  if (s == 4) return "4";
  if (s == 5) return "5";
  if (s == 6) return "6";
  if (s == 7) return "7";
  if (s == 8) return "8";
  if (s == 9) return "9";
  return "0 "; 
}
