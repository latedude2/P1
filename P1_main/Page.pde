class Page {

  int headerX;
  int headerY;
  int pageX;
  int pageY;
  int w;
  int h;
  PImage page;
  PImage header;
  float scrollSpeed = height/10;

  //Constructor
  Page (int X1, int Y1, int X2, int Y2, PImage Header, PImage Page) {
    headerX = X1;
    headerY = Y1;
    pageX = X2;
    pageY = Y2;
    header = Header;
    page = Page;
    w = Page.width;  //could use width and height for scaling to other screen sizes
    h = Page.height;
  }

  //This function shows the page first, then the header
  void show() {
    background(10, 46, 64);     //background color to hide images in the background
    image(page, pageX, pageY, w, h);
    image(header, headerX, headerY);
  }

  //This function scrolls the page on the screen
  void scroll(float count) {
    if (count < 0) {
      this.pageY += scrollSpeed;
    }
    if (count > 0) {
      this.pageY -= scrollSpeed;
    }
    // Attempt to constrain the page
    if (pageY > 0) {  
      pageY -= 2;
    }
    if (pageY < (-h)+height) { //height of the image - height of the display
      pageY += 2;
    }
  }
}
