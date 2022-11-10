class Trem {
  float h;
  float x;
  float y;
  
  final int CENTRO = 0;
  final int ESQUERDA = 1;
  final int DIREITA = 2;
  
  int states[] = {CENTRO, ESQUERDA, DIREITA};
  int state;

  Trem () {
    y = random(0, 20);
    h = random(80, 200);
    //state = int(random(-1, states.length));
    
    //if (state == CENTRO) x =  0.33*width/3;
    //if(state == ESQUERDA) x = width/2-25;
    //if (state == DIREITA) x = 2.33*width/3;
  }

  void desenha(Trem t1, Trem t2) {
    gerarTrem(t1, t2);
    fill(100);
    rect(this.x, this.y, 50, this.h);
  }

  void moveTrem (Trem t1, Trem t2) {
    if (this.y < height) {
      this.y+=random(1, 7);
    } else {
      //state = int(random(states.length));
      h = random(80, 200);
      y = random(0, 20);
    }
    desenha(t1, t2);
  }
  
  void gerarTrem(Trem t1, Trem t2) {
    if (this.y > t1.y && this.y < t1.y+t1.h && this.y > t2.y && this.y < t2.y+t2.h) {
      this.y = t1.y - random(50, 200);
    }
  }
}
