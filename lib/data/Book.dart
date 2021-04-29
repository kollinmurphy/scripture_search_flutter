import 'package:scripture_search/data/Chapter.dart';

class Book {
  late Chapter head;
  late String reference;

  Book? previous;
  Book? next;

  Book(Map<String, dynamic> book) {
    reference = book["book"];
    List<Map<String, dynamic>> chapters = book["chapters"];
    head = Chapter(chapters.removeAt(0));

    Chapter prev = head;
    Chapter thisChapter;

    chapters.forEach((element) {
      thisChapter = Chapter(element);
      thisChapter.previous = prev;
      prev.next = thisChapter;
      prev = thisChapter;
    });
  }

  String get text {
    String text = head.text;
    Chapter? curr = head;
    while (curr?.next != null) {
      text += " ${curr?.next!.text}";
      curr = curr?.next;
    }
    return text;
  }
}