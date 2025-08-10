// part1_future.dart

Future<String> getMessage() {
  return Future.delayed(
    const Duration(seconds: 2), 
    () => 'Hello! 2 seconds have passed.',
  );
}


Future<void> main() async {
  print('Waiting for message...');
  String message = await getMessage(); 
  print(message); 
}