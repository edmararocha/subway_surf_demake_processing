class Personagem {
  final int CENTRO = 0;
  final int ESQUERDA = 1;
  final int DIREITA = 2;

  float posX;

  //final int pernaE = 0;
  //final int pernaD = 1;

  int state;
  int statePerna;

  Personagem() {
    state = CENTRO;
    posX = width/2;
  }

  void desenha() {
    fill(255);
    circle(posX, 2.5 * height / 3, 30);
  }

  void checkMoves() {
    switch (this.state) {
    case CENTRO:
      this.posX = width/2;
      break;
    case ESQUERDA:
      this.posX = 0.5*width/3;
      break;
    case DIREITA:
      this.posX = 2.5*width/3;
      break;
    }
  }

  void moveMEF() {
    //println(tempCentro);
    if (this.state == CENTRO) {
      if (keyCode == LEFT) {
        this.state = ESQUERDA;
      }
      if (keyCode == RIGHT) {
        this.state = DIREITA;
      }
    }
    
    if (this.state == ESQUERDA) {
      if (keyCode == RIGHT) {
        this.state = CENTRO;
      }
    }

    if (this.state == DIREITA) {
      if (keyCode == LEFT) {
        this.state = CENTRO;
      }
    }
    this.checkMoves();
  }
}
