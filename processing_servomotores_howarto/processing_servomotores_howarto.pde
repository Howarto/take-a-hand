//Processing code:
import processing.serial.*;
import controlP5.*;
ControlP5 cp5;
Serial port;

int xpos=90; // set x servo's value to mid point (0-180);
int ypos=90; // and the same here
int sliderValue = 90;
int global_slide_positions_x = 70; //130;
int global_slide_positions_y = 50; //250;
int d = 0;
String nombres[] = {"Servo1","Servo2","Servo3","Servo4","Servo5",};
int servo1, servo2, servo3, servo4, servo5 ;

void setup()
{
  noStroke();
//  size(700, 400);
  size(600,200);
  cp5 = new ControlP5(this);

  for(int x=0 ; x<=4 ; x++){
    cp5.addSlider(nombres[x])
      .setPosition(global_slide_positions_x + d, global_slide_positions_y)
      .setRange(0,180)
      .setSize(20,100)
      ;
    d=d+110;
  }
  
  frameRate(100);
  println(Serial.list()); // List COM-ports
  //select second com-port from the list
  // COLOCADLO A 0 PARA QUE COJA PRIMERA OPCIÓN DE LA LISTA O SIGUE CON 1,2,3... PARA LOS CORRELATIVOS. RECUERDA QUE SI NO ESTÁ A 0 Y NO HAY NADA TIRA ERROR
  port = new Serial(this, Serial.list()[0], 19200);
}

void draw()
{
  fill(175);
  rect(0,0,800,600);
//  
//  for(int i=0 ; i<=4 ; i++){
//    d=120*i;
//    fill(0,255,100);
//    rect(d+80,50,70,120);
//    fill(0,0,255);
//    rect(d+110,25,10,90);
//  }
  
  servo1 = (int) cp5.getController(nombres[0]).getValue();
  servo2 = (int) cp5.getController(nombres[1]).getValue();
  servo3 = (int) cp5.getController(nombres[2]).getValue();
  servo4 = (int) cp5.getController(nombres[3]).getValue();
  servo5 = (int) cp5.getController(nombres[4]).getValue();
  
  update(servo1, servo2, servo3, servo4, servo5);
    
}

void update(int servo1, int servo2, int servo3, int servo4, int servo5)
{
  //Output the servo position ( from 0 to 180)
  port.write(servo1+"x");
  port.write(servo2+"y");
  port.write(servo3+"z");
  port.write(servo4+"i");
  port.write(servo5+"j");
  
}

