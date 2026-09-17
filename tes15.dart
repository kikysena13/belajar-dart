mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class Spacecraft with Piloted {}

void main() {
  final craft = Spacecraft();
  craft.describeCrew();
}