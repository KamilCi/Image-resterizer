PImage img;

void setup()
{
  size(800, 600);
  img = loadImage("3.jpg");
  //img.resize(500,500);
}

void draw(){
  background(255);
  fill(0);
  noStroke();
  
  float tiles = mouseX/10;
  float tileSize = width/tiles;// tiles distrubuted on sketch window, it makes proper grid in relation to the position of X define by the mouse
  
  translate(tileSize/2, tileSize/2);
  
  for(int x= 0; x <tiles; x++)
  {
    for(int y = 0; y<tiles; y++)
    {
      // skaning the image, the gray of pixels defines the image
      
     color c = img.get(int(x*tileSize),int(y*tileSize));// pick up the color which get a specifin color out of a image in relation to the width/tiles
     float size = map(brightness(c),0,255,tileSize,0); // <- it converts the color into brightness value //x*tileSize returns floating point value but we need pixel from an array so int
      
      ellipse(x*tileSize,y*tileSize, size,size);
    }
  }
  saveFrame("output1/gol_####.png");// makes png files from animation
}

//to create grid we need create  nest loop 
