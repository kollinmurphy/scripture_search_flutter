import 'Book.dart';

class Canon {
  static const String OLD_TESTAMENT = "Old Testament";
  static const String NEW_TESTAMENT = "New Testament";
  static const String BOOK_OF_MORMON = "Book of Mormon";
  static const String DOCTRINE_COVENANTS = "doctrine-and-covenants";
  static const String PEARL_GREAT_PRICE = "pearl-of-great-price";

  Map<String, Book> _canon = Map();

  void addBook(String name, Book book) {
    _canon[name] = book;
  }

  static Canon? _instance;

  static Canon getInstance() {
    if (_instance == null) {
      _instance = new Canon();
    }
    return _instance!;
  }
}