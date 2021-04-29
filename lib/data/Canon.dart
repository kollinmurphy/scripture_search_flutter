import 'package:scripture_search/data/Work.dart';

class Canon {
  Map<String, Work> _canon = Map();

  void addWork(Work work) {
    _canon[work.reference] = work;
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