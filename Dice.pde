int sumDice=0;
void setup(){
  noLoop();
  size(660,650);
  textSize(40);
  strokeWeight(2);
  stroke(0);
}

void draw(){
  background(200);
  sumDice=0;
  for(int y=2;y<=580;y+=55){
    for(int x=2;x<=610;x+=55){
      Die bob = new Die(x,y);
      bob.roll();
      sumDice+=bob.roll();
      bob.show();
   }
  }
  fill(200);
  noStroke();
  fill(0);
  text("Sum of Dice:",10,640);
  text(sumDice,260,640);
}

void mousePressed(){
  redraw();
  sumDice=0;
}

class Die{ //models one single dice cube
  int DX;
  int DY;
  int DSide;
  
  Die(int x, int y){ //constructor
    DX=x;
    DY=y;
  }
  int roll(){ 
    DSide=(int)(Math.random()*6)+1;
    return(DSide);
  }
  void show(){
    stroke(0);
    fill(255);
    rect(DX,DY,50,50,10);
    fill(0);
    if(DSide==1)
      ellipse(DX+25,DY+25,10,10);
    if(DSide==2){
      ellipse(DX+10,DY+10,10,10);
      ellipse(DX+40,DY+40,10,10);
    }
    if(DSide==3){
      ellipse(DX+25,DY+25,10,10);
      ellipse(DX+10,DY+10,10,10);
      ellipse(DX+40,DY+40,10,10);
    }
    if(DSide==4){
      ellipse(DX+10,DY+10,10,10);
      ellipse(DX+40,DY+40,10,10);
      ellipse(DX+40,DY+10,10,10);
      ellipse(DX+10,DY+40,10,10);
    }
    if(DSide==5){
      ellipse(DX+10,DY+10,10,10);
      ellipse(DX+40,DY+40,10,10);
      ellipse(DX+40,DY+10,10,10);
      ellipse(DX+10,DY+40,10,10);
      ellipse(DX+25,DY+25,10,10);
    }
    if(DSide==6){
     ellipse(DX+10,DY+10,10,10);
     ellipse(DX+10,DY+25,10,10);
     ellipse(DX+10,DY+40,10,10);
     ellipse(DX+40,DY+10,10,10);
     ellipse(DX+40,DY+25,10,10);
     ellipse(DX+40,DY+40,10,10);
    }
  }
}
 
