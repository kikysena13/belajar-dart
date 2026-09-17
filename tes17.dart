class Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;

  Spacecraft(this.name, this.launchDate);

  void describe() {
    print('Spacecraft: $name');
  }
}

class MockSpaceship implements Spacecraft {
  @override
  String name = 'Mock';

  @override
  DateTime? launchDate = null;

  @override
  int? get launchYear => null;

  @override
  void describe() {
    print('Mock spaceship ready');
  }
}

void main() {
  final craft = MockSpaceship();
  craft.describe();
}