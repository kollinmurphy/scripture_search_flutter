class TextParser {
  static TextParser? _parser;

  RegExp _regExp = RegExp(r"[a-zA-Z]+");

  String parseWord(String word) {
    return _regExp.stringMatch(word) ?? "";
  }

  static TextParser getInstance() {
    if (_parser == null) {
      _parser = new TextParser();
    }
    return _parser!;
  }
}