class Personagem {
  final int CENTER = 0;
  final int LEFT = 1;
  final int RIGHT = 2;
  
  final int pernaE = 0;
  final int pernaD = 1;

  int state;
  int statePerna;
  
  Personagem() {
    state = CENTER;
    
  }
  
  void desenha(float x,float  y) {
    fill(255);
    circle(x, y, 30);
  }

  void checkMoves() {
    if (this.state == CENTER) {
      this.desenha(width / 2, 2.5 * height / 3);
    }
    switch (this.state) {
      case LEFT:
        this.desenha(0.5*width / 3, 2.5 * height / 3);
        break;
      case RIGHT:
        this.desenha(2.5 * width / 3, 2.5 * height / 3);
        break;
    }
  }

  void moveMEF() {
    if (keyPressed) {
      if (key == 'a' || key == 'A') {
        this.state = LEFT;
      }

      if (key == 'd' || key == 'D') {
        this.state = RIGHT;
      }

      if (key == 's' || key == 'S') {
        this.state = CENTER;
      }
    }
    this.checkMoves();
  }
}
