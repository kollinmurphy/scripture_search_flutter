import 'package:scripture_search/data/CanonFactory.dart';

class HomePresenter {
  static HomePresenter? _instance;

  void init() {
    CanonFactory.getInstance().makeCanon();
  }

  static HomePresenter getInstance() {
    if (_instance == null) {
      _instance = new HomePresenter();
    }
    return _instance!;
  }
}
