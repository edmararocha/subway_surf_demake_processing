class Trem {
  float h;
  float x;
  float y;
  
  Trem () {
    h = random(100, 400);
  }
  
  void desenha() {
    rect(this.x, this.y, 50, this.h);
  }
  
  void moveTrem () {
    if (this.y+h < height) {
      this.y+=5;
    }
  }
}
