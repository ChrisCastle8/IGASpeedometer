class SpeedometerFace {

  public SpeedometerFace(int centrex, int centrey) {
    centre_x = centrex;
    centre_y = centrey;
    font = createFont(PFont.list()[pfontname], pfontsize);
    //println(PFont.list()[pfontname]);
  }

  float rate=1.1f;

  String [] s =            { "0  ", "20", "40", "60", "80", "100", "120", "140", "160", "180"}; // some text to display

  float dia =            400;// diameter of the circle
  float centre_x = dia/2.0+10.0;
  float centre_y = dia/2.0+10.0;
  PFont font;
  int pfontname = (int)random(PFont.list().length);
  float pfontsize = 25;
  int fontColor = color(255, 20, 147);

  float pointerLength = 200;
  int pointerColor = color(200, 0, 0);

  int smalltickcolor = color(150);
  float smalltickwidth = 1.0f;
  float smalltickradius = 82.0f;
  float smallticklength = 3.0f;
  // large ticks 
  int tickcolor = color(255, 0, 0);
  float tickwidth = 3.0f;
  float tickradius = 80.0f;
  float ticklength = 5.0f;

  float pi = (float) Math.PI;
  float[] numeral_angles = {-41*pi/36, -36*pi/36, -30*pi/36, -25*pi/36, -20*pi/36, -15*pi/36, -10*pi/36, -5*pi/36, -0, 6*pi/36};
  float maxKmph = 225f;
  float kmph = 00.0f;
  float totalangle = 300f;


  float intercept = 2.0f;
  float needlehalfwidth = 10.0f;
  float needlelength = 150f;
  float needleendwidth =2.0f;

  float outerarcwidth = 5f;
  float innerarcwidth = 3f;
  float innerarclength = dia/3;
  float outerarclength = dia+30;

  int facestroke = color(255);
  int normalspeedstroke = color(255);
  int highspeedstroke = color(255, 0, 0);

  float mapKmphToRadians(float kmph) {
    return radians( map(kmph, -35, maxKmph, -totalangle/2f, totalangle/2f));
  }



  void show() {
    smooth();
    pushMatrix();
    translate(centre_x, centre_y); 
    font = createFont(PFont.list()[pfontname], 25);




    textFont(font, 25);
    textAlign(CENTER);

    // draw circular path
    fill(10);
    stroke(smalltickcolor);
    //strokeWeight(5);
    ellipse(0, 0, dia+10, dia+10);

    stroke(highspeedstroke);
    strokeWeight(outerarcwidth);
    arc(0, 0, outerarclength, outerarclength, -10.6*pi/36, 4.4*pi/36);
    strokeWeight(innerarcwidth);
    arc(0, 0, innerarclength, innerarclength, -10.6*pi/36, 4.4*pi/36);
    stroke(normalspeedstroke);
    strokeWeight(outerarcwidth);
    arc(0, 0, outerarclength, outerarclength, -40.6*pi/36, -10.6*pi/36);
    strokeWeight(innerarcwidth);
    arc(0, 0, innerarclength, innerarclength, -40.6*pi/36, -10.6*pi/36);

    pushMatrix();
    if ( kmph>189f ) rate*=0f;

    kmph += rate; //= map(mouseX, -90f, 700, 0f, maxKmph); 
    rotate( mapKmphToRadians(kmph) );
   
    stroke(pointerColor);
    strokeWeight(1);
    fill(pointerColor);
    beginShape();
    
    vertex(-needlehalfwidth, intercept);  // Write these points to see the triangle
    vertex(-needleendwidth, -needlelength);
    vertex(needleendwidth, -needlelength);     // in the usual x,y graphics coordinates.
    vertex(needlehalfwidth, intercept);
    endShape();
    popMatrix();


    fill(0);
    stroke(pointerColor);
    strokeWeight(4);
    ellipse(0, 0, 50, 50);

    fill(20);
    noStroke();
    rect(-55, 70, 120, 50);

    fill(fontColor);
    strokeWeight(0);
    text(nf(200+1000, 4, 1), 5, 100);

    fill(fontColor);
    noStroke();
    for (int i=0; i<s.length; i++) {      // draw character-by-character
      float circle_x = 145 * cos(numeral_angles[i]);
      float circle_y = 145 * sin(numeral_angles[i]);
      text(s[i], circle_x, circle_y);  // display the character
    }

    fill(255);
    noStroke();
    rotate(radians(-25));
    pushMatrix(); // start tick marks context
    for (int i = 0; i < 37; i++) {
      pushMatrix();                          // local transform for each tick
      translate(-dia/2, 0);                  // move to edge of circle
      rotate(-HALF_PI);
      if (i % 4 == 0)
        largeTick();
      else
        smallTick();

      popMatrix();
      rotate(radians(6.25));
    }
    popMatrix(); // end tick marks context

    popMatrix();
  }

  void smallTick() {
    if (smalltickwidth == 0.0f)
      return;
    stroke(smalltickcolor);
    strokeWeight(smalltickwidth);
    line(smalltickradius/9, 0, (smalltickradius + smallticklength)/9, 20);
    //line(smalltickradius/9, 0, (smalltickradius + smallticklength)/9, 30);
  }

  void largeTick() {
    if (tickwidth == 0.0f)
      return;
    stroke(tickcolor);
    strokeWeight(tickwidth);
    line(tickradius/9, 0, (tickradius + ticklength)/9, 25);
    //line(tickradius/9, 0, (tickradius + ticklength)/9, 30);
  }
}
