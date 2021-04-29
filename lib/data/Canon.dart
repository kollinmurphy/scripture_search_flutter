import 'package:scripture_search/data/Work.dart';

import 'Book.dart';

class Canon {
  static const String OLD_TESTAMENT = "Old Testament";
  static const String NEW_TESTAMENT = "New Testament";
  static const String BOOK_OF_MORMON = "Book of Mormon";
  static const String DOCTRINE_COVENANTS = "doctrine-and-covenants";
  static const String PEARL_GREAT_PRICE = "pearl-of-great-price";

  Map<String, Work> _canon = Map();

  void addWork(String name, Work work) {
    _canon[name] = work;
  }

  static Canon? _instance;

  static Canon getInstance() {
    if (_instance == null) {
      _instance = new Canon();
    }
    return _instance!;
  }

  String getText(String book) => _canon[book]?.text ?? "";
}