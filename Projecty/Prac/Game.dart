import 'dart:io';

String readLineSync() {
  String? s = stdin.readLineSync();
  return s == null ? '' : s;
}

/**
 * CodinGame planet is being attacked by slimy insectoid aliens.
 * <---
 * Hint:To protect the planet, you can implement the pseudo-code provided in the statement, below the player.
 **/
void main() {
  // game loop
  while (true) {
    String enemy1 = readLineSync(); // name of enemy 1
    int dist1 = int.parse(readLineSync()); // distance to enemy 1
    String enemy2 = readLineSync(); // name of enemy 2
    int dist2 = int.parse(readLineSync()); // distance to enemy 2

    // Write an action using print()
    // To debug: stderr.writeln('Debug messages...');

    // Display enemy1 name when enemy1 is the closest, enemy2 otherwise
    if (dist1 < dist2) {
      print(enemy1);
    } else {
      print(enemy2);
    }
  }
}
