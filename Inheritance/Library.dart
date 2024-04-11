import 'dart:io';

class Book {
  String bookTitle;
  String bookAuth;
  bool isAvailable;

  Book(this.bookTitle, this.bookAuth, this.isAvailable);

  void displayInfo() {
    print("Title $bookTitle");
    print("Auther $bookAuth");
    print("Available ${isAvailable ? "Yes" : "No"}");
  }
}

class LibraryMember {
  String name;
  List<Book> bookBorrow = [];

  LibraryMember(this.name) : bookBorrow = [];

  void borrowedBook(Book book) {
    if (book.isAvailable) {
      bookBorrow.add(book);
      book.isAvailable = false;
      print("$name borrowed ${book.bookTitle}");
    } else {
      print("${book.bookTitle} is not available");
    }
  }

  void returnedBook(Book book) {
    if (bookBorrow.contains(book)) {
      bookBorrow.remove(book);
      book.isAvailable = true;
      print("$name returned ${book.bookTitle}");
    } else {
      print("${book.bookTitle} was not borrowed by $name");
    }
  }

  void displayedBorrwoedBook(Book book) {
    if (bookBorrow.isEmpty) {
      print("$name is not borrowed any books");
    } else {
      print("$name is borrowed has following books");
      bookBorrow.forEach((book) {
        print("${book.bookTitle} by ${book.bookAuth}");
      });
    }
  }
}

class LibraryStaff {
  List<Book> BookLibrary;

  LibraryStaff() : BookLibrary = [];

  void addBook(Book book) {
    BookLibrary.add(book);
    print("Added ${book.bookTitle} to library");
  }

  void bookRemove(Book book) {
    if (BookLibrary.contains(book)) {
      BookLibrary.remove(book);
      print("Removed ${book.bookTitle} from library");
    } else {
      print("${book.bookTitle} is not present in the library");
    }
  }

  void updateBook(Book book, String newTitle, String newAuth) {
    if (BookLibrary.contains(book)) {
      book.bookTitle = newTitle;
      book.bookAuth = newAuth;
      print("Updated ${book.bookTitle} information");
    } else {
      print("${book.bookTitle} is not available in Library");
    }
  }

  void displayAllBook() {
    if (BookLibrary.isEmpty) {
      print("No books in library");
    } else {
      print("Book is available in library");
      BookLibrary.forEach((book) {
        book.displayInfo();
        print("-----");
      });
    }
  }
}

void main() {
  int choice;
  void doC() {
    print("Hello world");
  }

  do {
    print("press 1 if you are staff of library.");
    print("press 2 if you are member of library");
    print("press 3 if you non of them");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 2) {
      doC();
    }
  } while (choice != 3);
}
