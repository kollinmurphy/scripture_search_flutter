import 'package:scripture_search/data/Canon.dart';
import 'package:scripture_search/data/json/BookOfMormon.dart';

import 'Book.dart';

class CanonFactory {
  static CanonFactory? _factory;

  static CanonFactory getInstance() {
    if (_factory == null) {
      _factory = new CanonFactory();
    }
    return _factory!;
  }

  static const List<String> BOOKS = [
    Canon.BOOK_OF_MORMON
  ];

  Canon makeCanon() {
    Canon canon = Canon.getInstance();
    canon.addBook(Canon.BOOK_OF_MORMON, Book(BookOfMormon.content));

    return canon;
  }
}