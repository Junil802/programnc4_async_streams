// part2_error_handling.dart

Future<String> getErrorMessage() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => throw Exception('Something went wrong!'),
  );
}

Future<void> main() async {
  try {
    print('Waiting for message...');
    String message = await getErrorMessage(); 
    print(message); 
  } catch (e) {
    print('Error caught: $e'); 
  }
}
