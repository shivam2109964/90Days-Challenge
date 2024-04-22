Future<String> fetchUserData() {
  return Future.delayed(Duration(seconds: 5), () => 'Fetched user Data');
}

void main() async {
  try {
    var userData = await fetchUserData();
    print(userData);
  } catch (e) {
    print('An error occurred : $e');
  }
}
