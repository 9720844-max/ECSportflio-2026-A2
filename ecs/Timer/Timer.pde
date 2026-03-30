// Henrik Rohrwasser | Mar 25, 2026 | Reusable Button
import processing.sound.*;
SoundFile alarm;
Button btnStart, btnStop, btnReset;
int totalTime, startTime, timeLeft;
boolean running;

void setup() {
  size(500, 500);
  alarm = new SoundFile(this, "alarm.mp3");
  btnStart = new Button(100, 400, 100, 30, "Start");
  btnStop = new Button(width/2, 400, 100, 30, "Stop");
  btnReset = new Button(400, 400, 100, 30, "Reset");
  totalTime = 10;
  startTime = 0;
  running = false;
}

void draw() {
  background(#A9EAF0);

  if (running == true) {
    int elapsed = (millis() - startTime)/1000;
    timeLeft = totalTime - elapsed;

    if (timeLeft <= 0) {
      timeLeft = 0;
      running = false;
    }
  }
  btnStart.display();
  btnStop.display();
  btnReset.display();
  fill(70);
  rectMode(CENTER);
  rect(width/2, height/2, width-50, 200, 10);
  textSize(100);
  textAlign(CENTER, CENTER);
  fill(255, 2, 2);
  text(timeLeft, width/2, height/2);
}

void mousePressed() {
  if (btnStart.isMouseOver() == true) {
    running = true;
    startTime = millis();
  }
  
  if(btnStop.isMouseOver() == true) {
    running = false;
  }
  if (btnStart.isMouseOver() == true) {
    running = true;
    startTime = millis();
}
