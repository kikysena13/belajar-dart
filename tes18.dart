abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('===========');
    describe();
    print('===========');
  }
}

class Starship implements Describable {
  @override
  void describe() {
    print('Starship is ready for launch.');
  }

  @override
  void describeWithEmphasis() {
    print('===========');
    describe();
    print('===========');
  }
}

void main() {
  final ship = Starship();
  ship.describeWithEmphasis();
}