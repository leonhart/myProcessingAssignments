/***************************************************
Programmed by Qiming Zhou, ID 10415752
Processing 3.2.3    macOS 10.12.2
Find the sum of the first 100 Harmonic series numbers
***************************************************/

void setup() {
  
  double n = 1 , sum = 0, invSum = 0;
  for(; n <= 100 ; n++){
    sum = sum + 1.0/n;
  }
  println(sum);
  
  for(n = 100; n >= 1 ; n--){
    invSum = invSum + 1.0/n;
  }
  println(invSum);
  
  println(sum - invSum);
  
  exit();
}