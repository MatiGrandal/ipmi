

  PImage paladioVillaRotonda;

void setup() {
  
  
  size(800, 400);
  
  
  paladioVillaRotonda = loadImage( "paladio.jpg" );

}

void draw() {
  
  
  //celeste del cielo
  background( 6, 138, 206);
  
  
  
  //color rojo del techo
  fill(90, 13, 13);
  
  //cupula
  circle( 600, 160, 85);
  
  
  //color verde del pasto
  fill( 6, 118, 1);
  
  //triangulo verde de pasto
  triangle( 600, 225, 315, 400, 885, 400);
  
  
  //color gris piedra
  fill(150);
  
  //piedras izq
  triangle( 400, 275, 400, 350, 520, 275);
  
  //piedras der
  triangle( 680, 275, 800, 275, 800, 365);
  
  
  //color gris monumento  
  fill(210);
  
  //rectangulo superior
  rect( 475, 135, 250, 40);
  
  //rectangulo principal
  rect( 475, 175, 250, 100);
  
  //columna 1
  rect( 510, 175, 10, 60);
  //columna 2
  rect( 540, 175, 10, 60);
  //columna 3
  rect( 570, 175, 10, 60);
  //columna 4
  rect( 620, 175, 10, 60);
  //columna 5
  rect( 650, 175, 10, 60);
  //columna 6
  rect( 680, 175, 10, 60);
  
  //escaleras
  rect( 495, 235, 210, 40);
 
 
 
 //color rojo del techo
  fill(90, 13, 13);
  
  //tejas superiores
  rect( 475, 135, 250, 5);
  
  
  
  //color de las paredes
  fill(210);
  
  //triangulo superior
  triangle( 600, 120, 510, 160, 690, 160);
  
  //rectangulo abajo del triangulo
  rect( 510, 160, 180, 15);
  
  //pared baranda de escaleras izq
  rect( 495, 235, 15, 40);
  
  //baranda de escaleras izq
  triangle( 510, 235, 510, 275, 530, 235);
  
  //pared baranda de escaleras der
  rect( 690, 235, 15, 40);
  
  //baranda de escaleras der
  triangle( 670, 235, 690, 235, 690, 275);
  
  
  
  //gris mas oscuro para dar profundidad
  fill(170);
  
  //pared de la izq
  rect( 400, 235, 75, 40);
  
  //pared de la der
  rect( 725, 235, 75, 40);
  
  
  
  //gris mas oscuro para dar profundidad
  fill(195);
  
  //pared del costado derecho
  rect( 725, 175, 35, 100);
  
  //pared del costado izquierdo
  rect( 440, 175, 35, 100);
  
  //rectangulo para separar techo de columnas (lado izq)
  rect( 440, 175, 35, 20);
  
  //rectangulo para marcar la columna izq
  rect( 450, 195, 25, 40);
  
  //piso del lado izquierdo
  rect( 440, 235, 35, 40);
  
  //rectangulo para separar techo de columnas (lado der)
  rect( 725, 175, 35, 20);
  
  //rectangulo para marcar la columna der
  rect( 725, 195, 25, 40);
  
  //piso del lado derecho
  rect( 725, 235, 35, 40);
  
  
  
  //color del techo
  fill(90, 13, 13);
  
  //tejas del lado izquierdo
  rect( 440, 175, 35, 5);
  
  //tejas del lado derecho
  rect( 725, 175, 35, 5);
  
  
  
  //color gris oscuro para las ventanas
  fill( 100);
  
  //ventana superior izquierda
  rect( 485, 150, 15, 15);
  
  //ventana superior derecha
  rect( 700, 150, 15, 15);
  
  //entrada principal
  rect( 585, 185, 30, 50);
  
  //ventana del costado izquierdo
  rect( 700, 200, 15, 20);
  
  //ventana del costado derecho
  rect( 485, 200, 15, 20);
  
  //ventana central derecha
  rect( 660, 205, 15, 30);
  
  //ventana central izquierda
  rect( 525, 205, 15, 30);
  
  //ventana inferior izquierda
  rect( 460, 250, 15, 25);
  
  //ventana inferior derecha
  rect( 725, 250, 15, 25);
  
  
  
  //color macetas
  fill( 178, 92, 0);
  
  //maceta izquierda
  rect( 495, 266, 13, 14);
  
  //maceta derecha
  rect( 692, 266, 13, 14);
  
  
  
  //verde de las plantas
  fill( 6, 118, 1);
  
  //planta izquierda
  ellipse( 502, 260, 25, 15);
  
  //planta derecha
  ellipse( 699, 260, 25, 15);
  
  
  
  image( paladioVillaRotonda, 0, 0, 400, 400);  
  
}
