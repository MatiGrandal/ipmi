PImage pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6;
PFont fuente1;
int pantalla;
float botonX, botonY, botonAncho, botonAlto;
float texto;
int frame;
int tiempoPantalla;
float serpienteX, serpienteY, manzanaX, manzanaY;
boolean comioManzana, movimientoSerpiente;
void setup(){
size( 640, 480);
pantalla1 = loadImage("snake.jpg");//imagen pantalla 1
pantalla2 = loadImage("snake2.jpg");//imagen pantalla 2
pantalla3 = loadImage("snake3.jpg");//imagen pantalla 3 
pantalla4 = loadImage("snake4.jpg");//imagen pantalla 4
pantalla5 = loadImage("snake5.jpg");//imagen pantalla 5
pantalla6 = loadImage("snake6.jpg");//imagen pantalla 6
fuente1 = loadFont("fuente1.vlw");
textFont(fuente1);
pantalla = 0;
botonX = 265;
botonY = 390;
botonAncho = 110;
botonAlto = 40;
texto = 500;
frame = 0;
tiempoPantalla = 480;
serpienteX = 120;
serpienteY = 320;
manzanaX = 460;
manzanaY = 330;
comioManzana = false;
movimientoSerpiente = false;
}

void draw(){
 
background( 255, 255, 255 );
if(pantalla == 0){//cambio de las pantallas
pantallaNro1();
} else if(pantalla >= 1 && pantalla <= 4){
pantallaNro2();
cambioAutomatico();
} else if(pantalla == 5){
pantallaNro6();
}
}
// Animacion de texto
void cambioAutomatico(){
if(texto > 240){
  texto = texto - 2;
}
// Cuanto dura cada pantalla (8s)
if(frameCount - frame >= tiempoPantalla){ //Si pasaron 60 frames suma 1 a la variable pantalla
pantalla = pantalla + 1;
frame = frameCount;
texto = 500;

}
}

void pantallaNro1(){ //pantalla 1
image(pantalla1, 0, 0, 640, 480);
textAlign(CENTER, CENTER);
fill(255);
textSize(60);
text("SNAKE", 320, 120);
fill(50, 180, 30);
rect( botonX, botonY, botonAncho, botonAlto, 10);

fill(255);
textSize(30);
text("JUGAR", botonX + botonAncho/2, botonY + botonAlto/2);
}

void pantallaNro2(){
if (pantalla == 1){ //pantalla2
  image(pantalla2, 0, 0, 640, 480);
  textSize(20);
  fill(255);
  text("Snake es un juego adoptado por google,\n la idea nacio en 1976 para arcades de la empresa Gremlin Industries,\n sin embargo la version clasica que todos conocen de la vivorita\n nacio en 1976 en los nokia.", 320, texto);
}
else if (pantalla ==2) { //pantalla 3
  image(pantalla3, 0, 0, 640, 480);
  if(comioManzana == false){ 
  text("Presiona", 320, 380);
  fill(180);
  rect( 300, 390, 40, 40, 10);
  textAlign(CENTER, CENTER);
  fill(0);
  text(" D ", 320, 410);
  fill(255, 0, 0);
  ellipse(manzanaX, manzanaY, 20, 20);
  fill(50, 180, 30);
  rect(serpienteX, serpienteY, 40, 20, 5);
  }
    fill(255);
  textSize(20);
  text("El juego consiste en que \n tenes que controlar a una serpiente \n y guiarla para que se coma las manzanas \n que aparecen en la cuadrilla", 320, texto);
  if(keyPressed && (key == 'd')){
    movimientoSerpiente = true; //activa el movimiento de la serpiente
  }
  if(movimientoSerpiente == true){
  serpienteX = serpienteX + 3;
  }
  if(serpienteX + 40 >= manzanaX - 10 && !comioManzana){ //la serpiente se come la manzana
  comioManzana = true; 
  }
  
} 
else if (pantalla == 3){ //pantalla 4
  image(pantalla4, 0, 0, 640, 480);
  text("Tenes que evitar chocarte con los bordes \n y con el propio cuerpo de la serpiente,\n ya que va creciendo una casilla por cada manzana que se coma", 320, texto);
} if(pantalla == 4){ //pantalla 5
  image(pantalla5, 0, 0, 640, 480);
  text("Para ganar, \n tenes que lograr hacer crecer tu serpiente \n hasta ocupar todas las casillas, \n sin perder en el intento", 320, texto);
}
}
void pantallaNro6(){ //pantalla 6
image(pantalla6, 0, 0, 640, 480);
fill(255);
textAlign(CENTER, CENTER);
textSize(30);
text("Muchas gracias", 320, 120);
fill(200, 7, 7);
rect(botonX - 10, botonY, botonAncho + 20, botonAlto, 10);
fill(255);
textSize(20);
text("REINTENTAR", botonX + botonAncho/2, botonY + botonAlto/2);

}

void mousePressed(){
  if(pantalla == 0){ //boton JUGAR
    if(mouseX >= botonX && mouseX <= botonX + botonAncho && mouseY >= botonY && mouseY <= botonY + botonAlto){
  pantalla = 1;
}  
}
  if(pantalla == 5){ //boton REINTENTAR
    if(mouseX >= botonX - 10 && mouseX <= botonX + botonAncho + 10 && mouseY >= botonY && mouseY <= botonY + botonAlto){
    pantalla = 0; // te lleva a la primer pantalla
    movimientoSerpiente = false; //reinicia a la serpiente dejandola quieta
    serpienteX = 120; //reinicia la posicion de la serpiente
    comioManzana = false; //hace que vuelvan a aparecer la serpiente el cartel de "presiona d" y la manzana
    }
  }
}
