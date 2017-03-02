/***************************************************
 Programmed by Qiming Zhou, ID 10415752
 Processing 3.2.3    macOS 10.12.2
 ***************************************************/

float reciprocal(int n) {
  float sum = 0;
  for (int i = 1; i <= n; i++) {
    sum = sum + 1.0/(i * i);
  }
  return sum;
}


float invReciprocal(int n) {
  float sum = 0;
  for (int i = n; i >= 1; i--) {
    sum = sum + 1.0/(i * i);
  }
  return sum;
}
void setup() {
  float minus = 0;
  int j = 1;
  while(minus == 0){
    minus = reciprocal(j) - invReciprocal(j);
    j++;
  }
  println("the smallest term is 1/",j-1);
  println();
  
  println("\torder\t\tinvOrder");
  for (int i = 1; i <= 10000; i *= 10) {
    println("\t", reciprocal(i), "\t\t", invReciprocal(i));
    println("sqrt(6*sum)", sqrt(6*reciprocal(i)), "\t", sqrt(6*invReciprocal(i)));
  }
  exit();
}