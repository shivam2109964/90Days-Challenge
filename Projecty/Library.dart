import 'dart:io';

class Book {
  String title;
  String Auth;
  bool isAvailable = false;

  Book(this.title, this.Auth);

  void displayInfo() {
    print("Book name is $title");
    print("Auther name is $Auth");
    print("Avaialbe ${isAvailable ? "Yes" : "No"}");
  }
}

class LibraryStaff {
  String Staffname;
  List<Book> booksInLibarary;

  LibraryStaff(this.Staffname) : booksInLibarary = [];

  void addBook(Book book) {
    if (booksInLibarary.contains(book)) {
      print("This book is already Available in Library");
    } else {
      booksInLibarary.add(book);
    }
  }

  void removeBook(Book book) {
    if (booksInLibarary.contains(book)) {
      booksInLibarary.remove(book);
      print("Sucessfully Removed");
    } else {
      print("Book is not available in Library");
    }
  }

  void updateBook(String newTitle, String newAuther, Book book) {
    if (booksInLibarary.contains(book)) {
      book.title = newTitle;
      book.Auth = newAuther;
    } else {
      print("Book is not Available in Library");
    }
  }
   void showAllBook() {
    if (booksInLibarary.isNotEmpty) {
      print("--List of Book--");
      for (Book book in booksInLibarary) {
        print("${book.title} book");
        print("Auther name is ${book.Auth}");
        print("-------");
      }
    }
  }
}

class LibraryMember {
  String MemberName;
  List<Book> bookBorrow;

  LibraryMember(this.MemberName) : bookBorrow = [];

  LibraryStaff staff = LibraryStaff("Shivam");

  void borrwowBook(Book book) {
    if (staff.booksInLibarary.contains(book)) {
      bookBorrow.add(book);
      print(" ${bookBorrow.length} Book borrowdF Sucessfully");
    } else {
      print("Book is not Available in Library");
    }
  }

  void returnBook(Book book) {
    if (bookBorrow.isNotEmpty) {
      bookBorrow.remove(book);
      print("Book is returned sucessfully");
    } else {
      print("You are not borrow any book");
    }
  }

  void showAllBook() {
    if (bookBorrow.isNotEmpty) {
      print("--List of Book--");
      for (Book book in bookBorrow) {
        print("${book.title} book");
        print("Auther name is ${book.Auth}");
        print("-------");
      }
    }
  }
}

void main() {
  int rollChoice;
  //Staff role function
  void staffRole(String name) {
    LibraryStaff staffFun = LibraryStaff(name);
    int staffWorkChoice;
    do {
      print("Press 1 for book add");
      print("Press 2 for book remove");
      print("Press 3 for book update");
      print("Press 4 for to see all the book");
      print("Press 5 for non of them");

      staffWorkChoice = int.parse(stdin.readLineSync()!);
      if (staffWorkChoice == 1) {
        print("Enter the book name(title)");
        String title = stdin.readLineSync()!;
        print("Enter the book Auther name");
        String Auth = stdin.readLineSync()!;
        Book book = Book(title, Auth);
        staffFun.addBook(book);
      } else if (staffWorkChoice == 2) {
        print("Enter the book name(title)");
        String title = stdin.readLineSync()!;
        print("Enter the book Auther name");
        String Auth = stdin.readLineSync()!;
        Book book = Book(title, Auth);
        staffFun.removeBook(book);
      } else if (staffWorkChoice == 3) {
        print("Enter the book name(title)");
        String title = stdin.readLineSync()!;
        print("Enter the book Auther name");
        String Auth = stdin.readLineSync()!;
        print("Enter the New title of $title ");
        String newTitle = stdin.readLineSync()!;
        print("Enter the new Auther of $Auth");
        String newAuther = stdin.readLineSync()!;
        Book book = Book(title, Auth);

        staffFun.updateBook(newTitle, newAuther, book);
      } else if (staffWorkChoice == 4) {
        staffFun.showAllBook();
      }
    } while (staffWorkChoice != 4);
  }

  //Role Choice Options and actions perform
  do {
    print("Press 1 if you are staff of Library");
    print("Press 2 if you are memeber of Library");
    print("Press 3 if you non of them");
    rollChoice = int.parse(stdin.readLineSync()!);

    if (rollChoice == 1) {
      print("Enter your name");
      String name = stdin.readLineSync()!;
      staffRole(name);
    }
  } while (rollChoice != 3);
}
