/*************************************************** //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
 Programmed by Qiming Zhou, ID 10415752
 Processing 3.2.3    macOS 10.12.2
 ***************************************************/

double fact(int n) {
  double multi = 1;
  for (int i = 1; i <= n; i++) {
    multi = multi * i;
  }
  return multi;
}


double fact2(int n) {
  if (n <= 1)
    return 1;
  return n * fact2(n-1);
}


int fibo(int n) {
  int[] a = {1, 1};
  for (int i = 2; i <= n - 1; i++) {
    int temp = a[i-1]+a[i-2];  
    a = append(a, temp);
  }
  return a[n-1];
}


int fibo2(int n) {
  if (n <= 2)
    return 1;
  return fibo2(n-1) + fibo2(n-2);
}


void setup() {
  for (int n = 0; n<=30; n += 3) {
    print(fact(n), " ");
  }
  println();
  for (int n = 0; n<=30; n += 3) {
    print(fact2(n), " ");
  }
  println();
  for (int n = 1; n<=20; n++) {
    print(fibo(n), " ");
  }
  println();
  for (int n = 1; n<=20; n++) {
    print(fibo2(n), " ");
  }
  println();
  exit();
}