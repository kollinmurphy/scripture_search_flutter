import 'package:scripture_search/data/Canon.dart';

class HomePresenter {
  late Canon _canon;

  void init() {
    _canon = Canon.getInstance();
  }

  static HomePresenter? _instance;
  static HomePresenter getInstance() {
    if (_instance == null) {
      _instance = new HomePresenter();
    }
    return _instance!;
  }
}
