class Library {
  List<Book> books = [];
  List<Member> members = [];

  void addBook(Book book) {
    books.add(book);
  }

  void addMember(Member member) {
    members.add(member);
  }

  void displayBook() {
    if (books.isEmpty) {
      print("Book is not Available");
    } else {
      print("Book is Available: ");
      for (var book in books) {
        print("${book.title} by ${book.author}");
      }
    }
  }

  void displayMember() {
    if (members.isEmpty) {
      print("No member is allocate in Library");
    } else {
      print("Members of the library");
      for (var member in members) {
        print("- ${member.name}");
      }
    }
  }
}

class Book {
  String title;
  String author;

  Book(this.title, this.author);
}

class Member {
  String name;

  Member(this.name);
}

void main() {
  var library = Library();

  //Adding books to the library
  var book1 = Book("Flutter", "Shivam");
  var book2 = Book("Java", "Oracle");
  var book3 = Book("C", "Danies Ritchi");
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  //Adding member to the library
  var member1 = Member("John");
  var member2 = Member("Dune");
  var member3 = Member("Bob");
  library.addMember(member1);
  library.addMember(member2);
  library.addMember(member3);

  //Display the books and members
  library.displayBook();
  print("");
  library.displayMember();
}
