import 'package:scripture_search/data/Word.dart';

class Verse {
  String _reference;
  Verse? previous;
  Verse? next;
  late Word head;

  Verse(String reference, String text) : _reference = reference {
    parseWords(text);
  }

  List<Word> parseWords(String text) {
    List<Word> words = [];

    List<String> split = text.split(" ");
    head = Word(split.removeAt(0));
    Word prev = head;
    Word thisWord;

    split.forEach((element) {
      thisWord = Word(element);
      thisWord.previous = prev;
      words.add(thisWord);
      prev = thisWord;
    });
    return words;
  }

  get reference => _reference;
}
