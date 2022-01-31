class SpeedometerGenes {
  String genes;
  float fitness = 0.0;
  static final int genelength = 109;

  SpeedometerGenes( String dna ) {
    genes = dna;
  }

  SpeedometerGenes (SpeedometerGenes dad, SpeedometerGenes mom) {
    int split = (int)random(genelength);
    genes = mom.genes.substring(0, split);
    genes = genes + dad.genes.substring(split, dad.genes.length() );
    int mutations = (int)random(8);
    char [] genemap = genes.toCharArray();
    while (mutations > 0 ) {
      int r = (int)random(genelength);
      genemap[r] = (genemap[r] == '1')?'0':'1';
      mutations--;
    }
    genes = new String(genemap);
  }

  SpeedometerGenes() {
    genes = "" ;
    for (int i = 0; i<genelength; i++) {
      int r = random(1f)>0.5?1:0;
      genes = genes + r;
    }
  }

  SpeedometerFace createSpeedometer(int x, int y) {
    int start = 0;
    int end = 0;
    SpeedometerFace t = new SpeedometerFace(x, y);
    t.dia = 400;

    end = start+9;
    t.pfontname = getInt(start, end);
    start = end;

    end = start+3;
    t.rate = getFloat(start, end, 0.8, 5.1);
    start = end;

    end = start+3;
    t.smalltickwidth = getInt(start, end);
    start = end;

    end = start+2;
    t.needleendwidth = getInt(start, end);
    start = end;

    end = start+5;
    t.needlelength = getFloat(start, end, 90, 150);
    start = end;
    
    end = start+7;
    t.innerarclength = getFloat(start, end, 80, 120);
    start = end;
    
    end = start+7;
    t.pfontsize = getFloat(start, end, 23, 27);
    start = end;
    
    end = start+5;
    t.outerarclength = getFloat(start, end, 420, 450);
    start = end;
    
    /*end = start+2;
    t.kmph = getFloat(start, end, 0, 189);
    start = end;*/

    end = start+4;
    t.outerarcwidth = getInt(start, end);
    start = end;

    end += 16;
    t.fontColor = getColorWithAlpha(start, end);
    start = end;

    end += 16;
    t.pointerColor = getColorWithAlpha(start, end);
    start = end;

    end += 16;
    t.normalspeedstroke = getColorWithAlpha(start, end);
    start = end;

    end += 16;
    t.highspeedstroke = getColorWithAlpha(start, end);
    start = end;
    
    //println( "genes used:"+end+" of "+ genelength);
    return t;
  }

  float getFloat( int start, int end, float min, float max ) {
    float f = getInt( start, end );
    f = map( f, (float)0, (float)Math.pow(2, end-start), min, max);
    return f;
  }

  int getInt( int start, int end, int min, int max ) {
    int p = getInt( start, end );
    p = (int)map( (float)p, (float)0, (float)Math.pow(2, end-start), (float)min, (float)max);
    return p;
  }
  int getInt( int start, int end ) {
    String segment = genes.substring(start, end);
    //println( "."+segment+"."+0);
    return unbinary( segment );  ///// HERE IS BINARY->INTEGER
  }

  int getColorWithAlpha( int start, int end ) {
    if ( end-start != 16 ) {
      println("Wrong number to getColorWithAlpha");
      return 0;
    }
    return color( 
      getInt(start, start+4, 10, 256), 
      getInt(start+4, start+8, 20, 256), 
      getInt(start+8, start+12, 40, 256), 
      getInt(start+12, end, 80, 256)
      );
  }
}
