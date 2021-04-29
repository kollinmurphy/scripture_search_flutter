import 'package:scripture_search/data/Word.dart';

class Verse {
  String _reference;
  Verse? previous;
  Verse? next;
  late Word head;

  Verse(String reference, String text) : _reference = reference {
    parseWords(text);
  }

  void parseWords(String text) {
    List<String> split = text.split(" ");
    head = Word(split.removeAt(0));
    Word prev = head;
    Word thisWord;

    split.forEach((element) {
      thisWord = Word(element);
      thisWord.previous = prev;
      prev.next = thisWord;
      prev = thisWord;
    });
  }

  get reference => _reference;

  String get text {
    String text = head.content;
    Word? curr = head;
    while (curr?.next != null) {
      text += " ${curr?.next!.content}";
      curr = curr?.next;
    }
    return text;
  }
}
