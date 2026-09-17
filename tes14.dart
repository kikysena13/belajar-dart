class Spacecraft {
  String name;
  DateTime? launchDate;

  Spacecraft(this.name, this.launchDate);

  int? get launchYear => launchDate?.year;

  void describe() {
    print('Spacecraft: $name');
  }
}

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

void main() {
  final orbiter = Orbiter('Mars Orbiter', DateTime(2024, 1, 1), 400.0);
  print('${orbiter.name}, altitude: ${orbiter.altitude} km');
}