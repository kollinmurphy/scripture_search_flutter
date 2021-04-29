import 'Verse.dart';

class Chapter {
  Chapter? previous;
  Chapter? next;
  
  late final String _reference;
  late Verse head;

  Chapter(Map<String, dynamic> chapter) {
    _reference = chapter["reference"];
    
    dynamic element = chapter["verses"].removeAt(0);
    head = Verse(element["reference"], element["text"]);
    Verse prev = head;
    Verse thisVerse;

    chapter["verses"].forEach((element) {
      thisVerse = Verse(element["reference"], element["text"]);
      thisVerse.previous = prev;
      prev.next = thisVerse;
      prev = thisVerse;
    });
  }

  get reference => _reference;

  String get text {
    String text = head.text;
    Verse? curr = head;
    while (curr?.next != null) {
      text += " ${curr?.next!.text}";
      curr = curr?.next;
    }
    return text;
  }
}
