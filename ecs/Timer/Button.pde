class Button {
  // Member Variables
  int x, y, w, h;
  String label;

  //constructor
  Button(int x, int y, int w, int h, String label) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
  }

  void display() {
    if(isMouseOver()) {
    fill(100);
    } else{
    fill(200);
    }
      if(wasClicked()) {
    fill(100);
    } else{
    fill(200);
    }
    //fill(#FC0303);
    rectMode(CENTER);
    rect(x,y,w,h,5);
    fill(0);
    textSize(20);
    textAlign(CENTER,CENTER);
    text(label,x,y);
  }

  boolean isMouseOver() {
    return mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
  }

  boolean wasClicked() {
      return mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
  }
}
