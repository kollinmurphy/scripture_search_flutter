import 'package:scripture_search/SplashPresenter.dart';
import 'package:scripture_search/data/DataInterface.dart';
import 'package:scripture_search/data/Work.dart';
import 'Canon.dart';

class CanonFactory {
  static const String BOOK_OF_MORMON = "book-of-mormon";
  static const String OLD_TESTAMENT = "old-testament";
  static const String NEW_TESTAMENT = "new-testament";
  static const String DOCTRINE_AND_COVENANTS = "doctrine-and-covenants";
  static const String PEARL_OF_GREAT_PRICE = "pearl-of-great-price";

  static const List<String> BOOKS = [
    BOOK_OF_MORMON,
    OLD_TESTAMENT,
    NEW_TESTAMENT,
    DOCTRINE_AND_COVENANTS,
    PEARL_OF_GREAT_PRICE
  ];

  static CanonFactory? _factory;

  static CanonFactory getInstance() {
    if (_factory == null) {
      _factory = new CanonFactory();
    }
    return _factory!;
  }

  Future<Canon> makeCanon(SplashPresenter presenter) async {
    Canon canon = Canon.getInstance();
    DataInterface data = DataInterface.getInstance();
    await data.init(BOOKS);
    for (String book in BOOKS) {
      canon.addWork(Work(data.get(book)));
    }
    return canon;
  }
}
