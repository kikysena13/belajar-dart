class Spacecraft {
  String name;
  DateTime? launchDate;

  Spacecraft(this.name, [this.launchDate]);
}

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(String name) : super(name);
}

void main() {
  final craft = PilotedCraft('Apollo');
  craft.describeCrew();
}