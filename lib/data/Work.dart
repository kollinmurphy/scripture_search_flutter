import 'Book.dart';

class Work {
  late Book head;
  late String reference;

  Work(Map<String, dynamic> book) {
    reference = book["title"];
    List<Map<String, dynamic>> books = book["books"];
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