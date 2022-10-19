float linhas[] = new float[7];
float pos1;
Personagem personagem;

void setup() {
  size(400, 600);

  personagem = new Personagem();

  for (int i = 0; i < 7; i++) {
    linhas[i] = i*85;
  }
  
  pos1 = linhas[0];
}

void draw() {
  cenario();
  for (int j =0; j < 7; j++) {
    if (linhas[j] < height) {
      linhas[j]+=5;
    } else {
      linhas[j] = pos1;
    }
  }
  
  personagem.moveMEF();
}

void cenario () {
  background(220);
  stroke(1);
  line(width/3, 0, width/3, height);
  line(2*width/3, 0, 2*width/3, height);
  desenhaLinhas(width/2);
  desenhaLinhas(0.5*width/3);
  desenhaLinhas(2.5*width/3);
}

void desenhaLinhas (float x) {
  noStroke();
  fill(180);
  rect(x, linhas[0], 5, height/12);
  rect(x, linhas[1], 5, height/12);
  rect(x, linhas[2], 5, height/12);
  rect(x, linhas[3], 5, height/12);
  rect(x, linhas[4], 5, height/12);
  rect(x, linhas[5], 5, height/12);
  rect(x, linhas[6], 5, height/12);
}
