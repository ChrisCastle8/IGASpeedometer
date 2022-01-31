speedometerFactory factory = new speedometerFactory();
SpeedometerFace left;
SpeedometerFace right;
SpeedometerGenes leftgenes;
SpeedometerGenes rightgenes;
int timesSelected = 0;
int generations;
int y = 1;
Table table;

int widthleft;
int widthright;
int heightcenter;


final static int LEARNING = 0;
int SHOWING = 1;
int mode = 0;

ArrayList<SpeedometerGenes> population = new ArrayList<SpeedometerGenes>(50);

public void settings() {
  size(1800, 700);
 
}
void setup() {

  background(50);
  smooth();

  widthleft = (int)(width*0.35);
  widthright = (int)(width*0.65);
  heightcenter = (int)(height*0.45);

  fillPopulation();
  saveGenes();

  table = loadTable("currentgenes.tsv", "header");
  
  for ( TableRow row : table.rows()) {
    String g = row.getString("genes");
    population.add(new SpeedometerGenes(g));
  }

  textAlign(CENTER, CENTER);

  setRandomPairToScreen();
}

void setRandomPairToScreen() {
  leftgenes = population.get((int)random(population.size()));
  left = leftgenes.createSpeedometer(0, heightcenter); // new speedometer;
  do {
    rightgenes = population.get((int)random(population.size()));
  } while (rightgenes == leftgenes );
  right = rightgenes.createSpeedometer(0, heightcenter); // new speedometer
}

void fillPopulation() {
  while (population.size() < 100) {
    population.add(new SpeedometerGenes() );
  }
}

void repopulate() {
  int n = 0;
  ArrayList<SpeedometerGenes> newpopulation = new ArrayList(100);
  while (population.size() > 67) {
    SpeedometerGenes min = population.get(0);
    for (SpeedometerGenes gn : population) {
      if (gn.fitness< min.fitness ) min = gn;
    }
    population.remove(min);
  }

  while (newpopulation.size() < 100) {
    SpeedometerGenes g1 = population.get((int)random(population.size()));
    SpeedometerGenes g2 = g1;
    while ( g1 == g2) {
      g2 = population.get((int)random(population.size()));
    }

    newpopulation.add( new SpeedometerGenes(g1, g2));
    n++;
  }
  population.clear();
  population.addAll(newpopulation);
  println( "repopulated " +n);
  timesSelected = 0;
  saveGenes();
}

void saveGenes() {
  String[] genestrings = new String[population.size() + 1];
  int i = 0;
  genestrings[i++] = "genes";
  for (SpeedometerGenes sg : population ) {
    genestrings[i++] = sg.genes;
  }
  saveStrings( "data/currentgenes.tsv", genestrings );
  
}

void draw() {
  switch( mode ) {
  case LEARNING:

    background(50);

    left.centre_x = widthleft;
    left.show();
    right.centre_x = widthright;
    right.show();

   
    textFont(createFont(PFont.list()[166],20));
    fill(255);
    //text("Interactive G A Test", 300, 50);
    for ( int i =0; i<100; i++);{
    generations =+ 1;}
    //text("genenarations = " + generations, 100, 70);
    textSize(48);
    text("Interactive Genetic Algorithm Demo", width/2, 50);
    textSize(32);
    text("This computer is learning to design speedometers. Please select the better speedometer.", width/2, height-120);
    break;
  }
}

void mousePressed() {
  switch( mode) {
  case LEARNING:
    selectSpeedometer(mouseX);
    break;
  }
}

void selectSpeedometer( int mousex) {
  if (mousex<(width/2 -10)) {
    leftgenes.fitness += 1.0;
    rightgenes.fitness -= 1.0;
    timesSelected++;
    if (timesSelected >= 25) {
      repopulate();
    }
    setRandomPairToScreen();
  } else if (mousex > (width/2+10)) {
    leftgenes.fitness -=1.0;
    rightgenes.fitness +=1.0;
    timesSelected++;
    if ( timesSelected >= 50 ) {
      repopulate();
    }
    setRandomPairToScreen();
  }
   println(table.getRowCount());
}
