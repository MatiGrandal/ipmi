// video https://youtu.be/9GcncsZpQHY

PImage OPArt; //imagen guia
float espiral = 0; //inclinacion
float backUp = 90; //reiniciar
float grosorRect; //el grosor de las tiras que van hacia los costados

void setup() {
  size(800, 400);
  noStroke(); //para sacar las lineas negras de los rect
  rectMode(CENTER); //para que el rectangulo se dibuje desde su propio centro y no desde la esquina superior izquierda
  OPArt = loadImage("02.jpg");
  grosorRect = backUp; //este es el punto al que vuelve
}

void draw() {
  background(255);

  if (mousePressed) { //este if me permite saber cuando estoy presionando el click
    espiral = calcularSensibilidad(0.000009); //aca me permite determinar la sensibilidad a la que se va a mover el espiral en relacion a los pixeles que se aleja el mouse del centro
  } else {
    espiral = 0; //aca le dice que si no esta presionado el mouse no se tiene que mover la obra
  }

  dibujarOpArt(espiral);// esta funcion sin retorno es la que dibuja la obra

  image(OPArt, 0, 0, 400, 400); //aplica la imagen
}

float calcularSensibilidad(float multiplicador) {//funcion con retorno
  float distanciaX = mouseX - 600; //hace que detecte que el mouse se aleja de lo que seria el centro en x (600)
  
  float resultado = distanciaX * multiplicador; //hace que la distancia a la que me alejo se multiplique por la sensibilidad que le puse (en este caso 0.000009) para que no gire muy rapido
  
  return resultado; 
}
void dibujarOpArt(float espiral) {//en este void dibujo la obra
  pushMatrix();//dice que a partir de aca se cumple el translate
  translate(600, 200);//define el centro como 600, 200

  for (int i = 400; i >= 36; i -= 28) {//este for dibuja los cuadrados alternando entre blanco y negro y haciendolos cada vez mas grandes
    pushMatrix();//a partir de aca afecta el rotate
    rotate(i * espiral); //efecto de espiral
    
    if ((i / 28) % 2 != 0) { //si el resultado da impar el cuadrado es blanco
      
    fill(255); } 
    else { //si da par es negro
    
    fill(0); }
    
    rect(0, 0, i, i); //cuadrados    
    popMatrix(); // hasta aca afecta el rotate
  }

  for (int i = 400; i >= 92; i -= 28) {// este for dibuja las tiras ralladas que salen hacia todos los ejes
    pushMatrix();
    rotate(i * espiral);
    
    boolean cuadradoNegro = ((i / 28) % 2 == 0);
    fill(cuadradoNegro ? 255 : 0); //este fill reconoce si el cuadrado es negro se hace la tira blanca y si es blanco se hace negra
    rect(0, 0, grosorRect, i); //tiras hacia arriba y abajo
    rect(0, 0, i, grosorRect);//tiras hacia los costados
    
    popMatrix();
  }

  for (int i = 92; i >= 36; i -= 28) {//este for dibuja los 3 cuadrados mas centricos que tienen el blanco y negro invertidos pero que sigue la misma logica que el primer for pero con los colores invertidos
    pushMatrix();
    rotate(i * espiral);
    
    if ((i / 28) % 2 != 0) { fill(0); } else { fill(255); }
    rect(0, 0, i, i);
    
    popMatrix();
  }

  popMatrix();//dice que aca finaliza el translate
}

void keyPressed() {// aca utilizo el if para decirle que si presiono la r vuelva a la posicion inicial
  if (key == 'r') {
    espiral = 0;
    grosorRect = backUp; 
  }
}

void mouseDragged() {
  grosorRect = map(mouseY, 0, height, 40, 120);//hace que se limite el grosor de las tiras, o sea que al yo llevar el mouse a 0 de y no desaparezcan y que yo al llevarlo a 400 no ocupen los 400 pixeles
}
