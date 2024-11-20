int greatestCommonDivisor(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a.abs(); 
}


int smallestCommonMultiple(int a, int b) {
  return (a * b).abs() ~/ greatestCommonDivisor(a, b);
}

void main() {
  int a = 15;
  int b = 20;
  
  print("UCLN của $a và $b là: ${greatestCommonDivisor(a,b)}");
  print("BCNN của $a và $b là: ${smallestCommonMultiple (a,b)}");
}

