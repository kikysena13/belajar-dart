import 'dart:io';

Future<void> createDescriptions(Iterable<String> objects) async {
  final root = await Directory.systemTemp.createTemp('dart_examples_');

  try {
    for (final object in objects) {
      try {
        final file = File('${root.path}/$object.txt');
        if (await file.exists()) {
          final modified = await file.lastModified();
          print('File for $object already exists. It was modified on $modified.');
          continue;
        }
        await file.create();
        await file.writeAsString('Start describing $object in this file.');
      } on IOException catch (e) {
        print('Cannot create description for $object: $e');
      }
    }
  } finally {
    await root.delete(recursive: true);
  }
}

void main() async {
  await createDescriptions(['venus', 'earth']);
}