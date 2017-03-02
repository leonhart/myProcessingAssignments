/***************************************************
Programmed by Qiming Zhou, ID 10415752
Processing 3.2.3    macOS 10.12.2
I use two different loops to finish this program
***************************************************/

void setup() {
  for (int i = 1; i < 100; i += 2) 
    print(i," ");
    println();
  
  
  int j = 1;
  while (j <= 32768){
    print(j);
    j = j * 2;
    println();
  }
  exit();
}