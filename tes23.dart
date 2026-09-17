void main() {
  const astronauts = 0;

  try {
    if (astronauts == 0) {
      throw StateError('No astronauts.');
    }
  } catch (e) {
    print(e);
  }
}