const oneSecond = Duration(seconds: 1);

class Spacecraft {
  final String name;

  const Spacecraft(this.name);
}

Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  for (final object in objects) {
    await Future.delayed(oneSecond);
    yield '${craft.name} flies by $object';
  }
}

void main() async {
  final craft = Spacecraft('Voyager I');
  await for (final line in report(craft, ['Jupiter', 'Saturn'])) {
    print(line);
  }
}