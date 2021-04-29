import 'package:scripture_search/data/Chapter.dart';

class Book {
  late Chapter head;
  late String reference;

  Book(Map<String, dynamic> book) {
    reference = book["book"];
    List<Map<String, dynamic>> chapters = book["chapters"];
    head = Chapter(chapters.removeAt(0));

    Chapter? prev;
    Chapter thisChapter;

    chapters.forEach((element) {
      thisChapter = Chapter(element);
      thisChapter.previous = prev;
    });
  }
}