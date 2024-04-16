// Interface representing a scanner device
abstract class Scanner {
  void scanDocument();
  // void faxDocument(); // commented out to adhere to ISP
}

// Printer class implementing the Scanner interface
class Printer implements Scanner {
  @override
  void scanDocument() {
    print('Scanning document...');
  }
}

// Copier class implementing the Scanner interface
class Copier implements Scanner {
  @override
  void scanDocument() {
    print('Scanning document...');
  }

  void copyDocument() {
    print('Copying document...');
  }
}

void main() {
  Printer printer = Printer();
  Copier copier = Copier();

  // Both Printer and Copier can scan documents
  printer.scanDocument();
  copier.scanDocument();

  // Copier can also copy documents
  copier.copyDocument();
}
