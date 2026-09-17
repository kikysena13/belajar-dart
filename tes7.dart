import 'dart:math';

class LocalDemo {
  final double radius;

  const LocalDemo(this.radius);

  double get area => pi * radius * radius;
}

void main() {
  final demo = LocalDemo(4.0);
  print('radius: ${demo.radius}');
  print('area: ${demo.area}');
}