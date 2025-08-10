// part3_stream.dart

// Stream function that emits numbers 1 to 5 with delays
Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i; 
  }
}

void main() {
  numberStream().listen((value) {
    print('Received: $value');
  });
}
