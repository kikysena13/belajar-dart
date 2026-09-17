import 'dart:io';

Future<void> describeFlybyObjects(List<String> flybyObjects) async {
  final root = await Directory.systemTemp.createTemp('dart_descriptions_');

  try {
    for (final object in flybyObjects) {
      final file = File('${root.path}/$object.txt');
      await file.writeAsString('Description for $object');
      final description = await file.readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
    await root.delete(recursive: true);
  }
}

void main() async {
  final objects = ['Jupiter', 'Saturn'];
  await describeFlybyObjects(objects);
  print('Remaining objects: $objects');
}