import 'package:scripture_search/SplashPresenter.dart';
import 'package:scripture_search/data/DataInterface.dart';
import 'package:scripture_search/data/Work.dart';
import 'Canon.dart';

class CanonFactory {
  static String BOOK_OF_MORMON = "book-of-mormon";
  static String OLD_TESTAMENT = "old-testament";
  static String NEW_TESTAMENT = "new-testament";
  static String DOCTRINE_AND_COVENANTS = "doctrine-and-covenants";
  static List<String> BOOKS = [BOOK_OF_MORMON];

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
    canon.addWork(Work(data.get(BOOK_OF_MORMON)));
    // await canon.addWork(Work(NewTestament.content));
    // await canon.addWork(Work(OldTestament.content));
    // await canon.addWork(Work(PearlOfGreatPrice.content));
    // await canon.addWork(Work(DoctrineAndCovenants.content));

    return canon;
  }
}