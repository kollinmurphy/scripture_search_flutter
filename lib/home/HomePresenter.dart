import 'package:scripture_search/data/Canon.dart';
import 'package:scripture_search/data/CanonFactory.dart';

class HomePresenter {
  static HomePresenter? _instance;
  
  late Canon _canon;

  void init() {
    _canon = CanonFactory.getInstance().makeCanon();
  }
  
  String get allText => _canon.getText(Canon.BOOK_OF_MORMON);

  static HomePresenter getInstance() {
    if (_instance == null) {
      _instance = new HomePresenter();
    }
    return _instance!;
  }
}
