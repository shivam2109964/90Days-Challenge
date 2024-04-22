Future<String> fetchContent() async {
  //Simulate a network request
  await Future.delayed(Duration(seconds: 2));
  return 'Fetched content';
}

Stream<int> timedCounter(Duration interval, [int? maxCount]) async* {
  int i = 0;
  while (maxCount == null || i < maxCount) {
    await Future.delayed(interval);
    yield i++;
  }
}

void main() async {
  try {
    var content = await fetchContent();
    print(content);

    await for (var n in timedCounter(Duration(seconds: 1), 5)) {
      print(n);
    }
  } catch (e) {
    print('An error occured $e');
  }
}
