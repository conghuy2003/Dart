import 'dart:math'; 

void solveQuadraticEquations(double a, double b, double c) {

  if (a == 0) {
    if (b == 0) {
      if (c == 0) {
        print("Phương trình có vô số nghiệm");
      } else {
        print("Phương trình vô nghiệm");
      }
    } else {
      double experience = -c / b;
      print("Phương trình có một nghiệm: x = $experience");
    }
    return;
  }

  double delta = b * b - 4 * a * c;

  if (delta > 0) {

    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print("Phương trình có hai nghiệm phân biệt:");
    print("x1 = $x1");
    print("x2 = $x2");
  } else if (delta == 0) {

    double x = -b / (2 * a);
    print("Phương trình có nghiệm kép: x = $x");
  } else {

    print("Phương trình vô nghiệm.");
  }
}

void main () {
  double a = 1 ;
  double b = -3;
  double c = 2;
  solveQuadraticEquations(a, b, c);
}
