import 'package:scripture_search/data/TextParser.dart';

class Word {
  String _content;
  String _trimmedContent;

  Word? previous;
  Word? next;

  Word(String word)
      : _content = word,
        _trimmedContent = TextParser.getInstance().parseWord(word);

  get content => _content;
  get trimmed => _trimmedContent;
}
