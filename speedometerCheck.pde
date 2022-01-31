class speedometerFactory {
  int i;

  public SpeedometerFace basic(int centre_x, int centre_y) {
    SpeedometerFace t = new SpeedometerFace(centre_x, centre_y);
    t.rate = 0f; // no rotation
    t.pfontname = 0;
    t.pfontsize = 25;
    t.fontColor = color(250);
    t.pointerLength = 200;
    t.pointerColor = color(200, 0, 0);

    t.smalltickcolor = color(250);
    t. smalltickwidth = 1.0f;
    t. smalltickradius = 82.0f;
    t. smallticklength = 3.0f;
    t.tickcolor = color(255, 0, 0);
    t.tickwidth = 3.0f;
    t.tickradius = 80.0f;
    t.ticklength = 5.0f;
    t.maxKmph = 225f;
    t.kmph = 60.0f;
    t.totalangle = 300f;
    t.intercept = 2.0f;
    t.needlehalfwidth = 10.0f;
    t.needlelength = 150f;
    t.needleendwidth =2.0f;
    t.outerarcwidth = 0f; //no arcs 
    t.innerarcwidth = 0f; // no arcs
    t.facestroke = color(255, 0f);
    t.normalspeedstroke  = color(255, 0f);
    t.highspeedstroke = color(255, 0, 0, 0f);
    return t;
  }

  public SpeedometerFace classic(int centre_x, int centre_y) {
    SpeedometerFace t = new SpeedometerFace(centre_x, centre_y);
    t.rate = 0; 
    t.pfontname = 20;
    t.pfontsize = 25;
    t.fontColor = color(255);
    t.pointerLength = 200;
    t.pointerColor = color(200, 0, 0);

    t.smalltickcolor = color(250);
    t. smalltickwidth = 1.0f;
    t. smalltickradius = 82.0f;
    t. smallticklength = 3.0f;
    t.tickcolor = color(255, 0, 0);
    t.tickwidth = 3.0f;
    t.tickradius = 80.0f;
    t.ticklength = 5.0f;
    t.maxKmph = 225f;
    t.kmph = 60.0f;
    t.totalangle = 300f;
    t.intercept = 2.0f;
    t.needlehalfwidth = 10.0f;
    t.needlelength = 150f;
    t.needleendwidth =2.0f;
    t.outerarcwidth = 5f; //no arcs 
    t.innerarcwidth = 3f; // no arcs
    t.facestroke = color(255, 0f);
    t.normalspeedstroke  = color(255, 0f);
    t.highspeedstroke = color(255, 0, 0, 0f);
    return t;
  }

  public SpeedometerFace basic_2(int centre_x, int centre_y) {
    SpeedometerFace t = new SpeedometerFace(centre_x, centre_y);
    t.rate = 0f; // no rotation
    t.pfontname = 5;
    t.pfontsize = 25;
    t.fontColor = color(255);
    t.pointerLength = 200;
    t.pointerColor = color(255, 69, 0);

    t.smalltickcolor = color(250);
    t. smalltickwidth = 1.0f;
    t. smalltickradius = 82.0f;
    t. smallticklength = 3.0f;
    t.tickcolor = color(255, 69, 0);
    t.tickwidth = 3.0f;
    t.tickradius = 80.0f;
    t.ticklength = 5.0f;
    t.maxKmph = 225f;
    t.kmph = 60.0f;
    t.totalangle = 300f;
    t.intercept = 2.0f;
    t.needlehalfwidth = 10.0f;
    t.needlelength = 150f;
    t.needleendwidth =2.0f;
    t.outerarcwidth = 5f; //no arcs 
    t.innerarcwidth = 3f; // no arcs
    t.facestroke = color(255, 0f);
    t.normalspeedstroke  = color(255, 0f);
    t.highspeedstroke = color(255, 0, 0, 0f);
    return t;
  }

  public SpeedometerFace golden(int centre_x, int centre_y) {
    SpeedometerFace t = new SpeedometerFace(centre_x, centre_y);
    t.rate = 1.1f; 
    t.pfontname = 5;
    t.pfontsize = 25;
    t.fontColor = color(255);
    t.pointerLength = 200;
    t.pointerColor = color(255, 215, 0);

    t.smalltickcolor = color(250);
    t. smalltickwidth = 1.0f;
    t. smalltickradius = 82.0f;
    t. smallticklength = 3.0f;
    t.tickcolor = color(255, 215, 0);
    t.tickwidth = 3.0f;
    t.tickradius = 80.0f;
    t.ticklength = 5.0f;
    t.maxKmph = 225f;
    t.kmph = 60.0f;
    t.totalangle = 300f;
    t.intercept = 2.0f;
    t.needlehalfwidth = 10.0f;
    t.needlelength = 100f; //shorter pointer
    t.needleendwidth =2.0f;
    t.outerarcwidth = 5f; //no arcs 
    t.innerarcwidth = 3f; // no arcs
    t.facestroke = color(255, 0f);
    t.normalspeedstroke  = color(255, 0f);
    t.highspeedstroke = color(255, 0, 0, 0f);
    return t;
  }

  public SpeedometerFace ladies(int centre_x, int centre_y) {
    SpeedometerFace t = new SpeedometerFace(centre_x, centre_y);
    t.rate = 1.1f; // no rotation
    t.pfontname = 5;
    t.pfontsize = 25;
    t.fontColor = color(255, 20, 147);
    t.pointerLength = 200;
    t.pointerColor = color(255, 20, 147);

    t.smalltickcolor = color(250);
    t. smalltickwidth = 1.0f;
    t. smalltickradius = 82.0f;
    t. smallticklength = 3.0f;
    t.tickcolor = color(255, 20, 147);
    t.tickwidth = 3.0f;
    t.tickradius = 80.0f;
    t.ticklength = 5.0f;
    t.maxKmph = 225f;
    t.kmph = 60.0f;
    t.totalangle = 300f;
    t.intercept = 2.0f;
    t.needlehalfwidth = 10.0f;
    t.needlelength = 100f;
    t.needleendwidth =0f;// pointed neddle
    t.outerarcwidth = 5f; //no arcs 
    t.innerarcwidth = 3f; // no arcs
    t.facestroke = color(255, 0f);
    t.normalspeedstroke  = color(255, 0f);
    t.highspeedstroke = color(255, 0, 0, 0f);
    return t;
  }

  public SpeedometerFace blue(int centre_x, int centre_y) {
    SpeedometerFace t = new SpeedometerFace(centre_x, centre_y);
    t.rate = 1.1f; // no rotation
    t.pfontname = 5;
    t.pfontsize = 25;
    t.fontColor = color(0, 0, 200);
    t.pointerLength = 200;
    t.pointerColor = color(0, 0, 200);

    t.smalltickcolor = color(250);
    t. smalltickwidth = 1.0f;
    t. smalltickradius = 82.0f;
    t. smallticklength = 3.0f;
    t.tickcolor = color(0, 0, 200);
    t.tickwidth = 3.0f;
    t.tickradius = 80.0f;
    t.ticklength = 5.0f;
    t.maxKmph = 225f;
    t.kmph = 60.0f;
    t.totalangle = 300f;
    t.intercept = 2.0f;
    t.needlehalfwidth = 10.0f;
    t.needlelength = 150f;
    t.needleendwidth =2.0f;
    t.outerarcwidth = 5f; //no arcs 
    t.innerarcwidth = 3f; // no arcs
    t.facestroke = color(255, 0f);
    t.normalspeedstroke  = color(255, 0f);
    t.highspeedstroke = color(0, 0, 200, 0f);
    return t;
  }

  public SpeedometerFace nosmallticks(int centre_x, int centre_y) {
    SpeedometerFace t = new SpeedometerFace(centre_x, centre_y);
    t.rate = 1.1f; // no rotation
    t.pfontname = 0;
    t.pfontsize = 25;
    t.fontColor = color(255);
    t.pointerLength = 200;
    t.pointerColor = color(200, 0, 0);

    t.smalltickcolor = color(250);
    t. smalltickwidth = 0f;
    t. smalltickradius = 82.0f;
    t. smallticklength = 3.0f;
    t.tickcolor = color(255, 0, 0);
    t.tickwidth = 3.0f;
    t.tickradius = 80.0f;
    t.ticklength = 5.0f;
    t.maxKmph = 225f;
    t.kmph = 60.0f;
    t.totalangle = 300f;
    t.intercept = 2.0f;
    t.needlehalfwidth = 10.0f;
    t.needlelength = 150f;
    t.needleendwidth =2.0f;
    t.outerarcwidth = 0f; //no arcs 
    t.innerarcwidth = 0f; // no arcs
    t.facestroke = color(255, 0f);
    t.normalspeedstroke  = color(255, 0f);
    t.highspeedstroke = color(255, 0, 0, 0f);
    return t;
  }

  public SpeedometerFace shortpointer(int centre_x, int centre_y) {
    SpeedometerFace t = new SpeedometerFace(centre_x, centre_y);
    t.rate = 1.1f; // no rotation
    t.pfontname = 0;
    t.pfontsize = 25;
    t.fontColor = color(255);
    t.pointerLength = 100;
    t.pointerColor = color(200, 0, 0);

    t.smalltickcolor = color(250);
    t. smalltickwidth = 0f;// no small ticks
    t. smalltickradius = 82.0f;
    t. smallticklength = 3.0f;
    t.tickcolor = color(255, 0, 0);
    t.tickwidth = 3.0f;
    t.tickradius = 80.0f;
    t.ticklength = 5.0f;
    t.maxKmph = 225f;
    t.kmph = 60.0f;
    t.totalangle = 300f;
    t.intercept = 2.0f;
    t.needlehalfwidth = 10.0f;
    t.needlelength = 100f;
    t.needleendwidth =0.0f;
    t.outerarcwidth = 5f; //no arcs 
    t.innerarcwidth = 3f; // no arcs
    t.facestroke = color(255, 0f);
    t.normalspeedstroke  = color(255, 0f);
    t.highspeedstroke = color(255, 0, 0, 0f);
    return t;
  }
  public SpeedometerFace redpointer(int centre_x, int centre_y) {
    SpeedometerFace t = new SpeedometerFace(centre_x, centre_y);

    t.pointerColor = color(200, 0, 0);
    t.needlelength = 100f;
    t.needleendwidth =0.0f;
    t.outerarcwidth = 5f; //no arcs 
    t.innerarcwidth = 3f; // no arcs
    t.facestroke = color(255, 0f);
    t.normalspeedstroke  = color(255, 0f);
    t.highspeedstroke = color(255, 0, 0, 0f);
    return t;
  }
}
