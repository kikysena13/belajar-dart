const oneSecond = Duration(seconds: 1);

Future<void> printWithDelay(String message) {
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });
}

void main() async {
  await printWithDelay('Delayed message');
}