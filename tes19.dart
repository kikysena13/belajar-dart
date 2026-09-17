const oneSecond = Duration(seconds: 1);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

void main() async {
  await printWithDelay('Delayed message');
}