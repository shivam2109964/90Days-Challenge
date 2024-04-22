mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print("Playing Piano");
    } else if (canConduct) {
      print("Waving hands");
    } else if (canCompose) {
      print("Composing Songs");
    } else {
      print("Humming to self");
    }
  }
}

class Performer {}

class Musician extends Performer with Musical {}

void main() {
  var musician = Musician();
  musician.canCompose = true;
  musician.canPlayPiano = true;
  musician.entertainMe();
}
