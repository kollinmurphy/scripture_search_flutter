import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:scripture_search/data/WebInterface.dart';

class DataInterface {
  static DataInterface? _instance;
  static DataInterface getInstance() {
    if (_instance == null) {
      _instance = new DataInterface();
    }
    return _instance!;
  }

  Map<String, String> books = Map();
  late String _directory;

  init(List<String> books) async {
    _directory = (await getApplicationDocumentsDirectory()).path;

    for (String element in books) {
      File file = File("$_directory/$element.txt");
      String contents;
      if (!(await file.exists())) {
        contents = await WebInterface.instance.getBook(element);
        file.writeAsString(contents);
      } else {
        contents = await file.readAsString();
      }
      this.books[element] = contents;
    }
  }

  String get(String book) => books[book] ?? "";
}