class Trem {
  float h;
  float x;
  float y;

  Trem () {
    y = random(0, 20);
    h = random(80, 200);
  }

  void desenha() {
    //fill(100);
    //rect(this.x, this.y, 50, this.h);
  }

  void moveTrem () {
    if (this.y < height) {
      this.y+=random(1, 7);
    } else {
      h = random(80, 200);
      y = random(0, 20);
    }
    desenha();
  }
}
