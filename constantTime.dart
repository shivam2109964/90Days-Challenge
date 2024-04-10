void main() {
  List<String> value = ["Shivam", "Shiva"];
  checkFirst(value);
}

void checkFirst(List<String> names) {
  if (names.isNotEmpty) {
    print(names.first);
  } else {
    print("No names");
  }
}
