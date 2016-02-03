//Helen Zhang, Block 8, Bouncing Ball
//https://89556d26c7d77e2bc180c5734c1925a4a28e7759.googledrive.com/host/0B24E0vgcnJ6PVTZhaFJsWXEwVEU/index.html

Ball you;

void setup(){
  size(300, 400);
  noStroke();
  you = new Ball();
}
void draw(){
  background(177, 198, 216);
  you.show();
  you.move();
  you.bounce();
}
class Ball{
  //The ball has...
  int x,y;
  boolean up,right;
  
  //Constructor
  Ball(){
    x = 150;
    y = 200;
    up = false;
    right = true;
  }
  
  //The ball does...
  void show(){
    fill(100);
    ellipse(x,y,20,20);
  }
  void move(){
    if (up == true){
      y-=2;
    } else{
      y+=2;
    }
    if (right == true){
      x++;
    } else{
      x--;
    }
    
  }
  void bounce(){
    if (y+10 > 400){
      up = true;
    } else if (y-10 < 0){
      up = false;
    }
    if (x-10 < 0){
      right = true;
    } else if (x+10 > 300){
      right =  false;
    }
  }
}
