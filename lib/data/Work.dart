import 'dart:convert';

import 'Book.dart';

class Work {
  late Book head;
  late String reference;

  Work(String text) {
    Map<String, dynamic> json = jsonDecode(text);
    reference = json["title"];
    List<dynamic> books = json["books"];
    head = Book(books.removeAt(0));

    Book prev = head;
    Book thisChapter;

    books.forEach((element) {
      thisChapter = Book(element);
      thisChapter.previous = prev;
      prev.next = thisChapter;
      prev = thisChapter;
    });
  }

  String get text {
    String text = head.text;
    Book? curr = head;
    while (curr?.next != null) {
      text += " ${curr?.next!.text}";
      curr = curr?.next;
    }
    return text;
  }
}