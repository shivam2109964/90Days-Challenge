void main() {
  List<String> ListName = ["Shivam", "Golu", "Arush"];
  printNames(ListName);
}

void printNames(List<String> names) {
  for (final name in names) {
    print(name);
  }
}
