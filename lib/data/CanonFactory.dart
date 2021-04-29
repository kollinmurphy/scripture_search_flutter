import 'package:scripture_search/data/Work.dart';
import 'package:scripture_search/data/json/BookOfMormon.dart';
import 'Canon.dart';

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
    canon.addWork(Canon.BOOK_OF_MORMON, Work(BookOfMormon.content));

    return canon;
  }
}