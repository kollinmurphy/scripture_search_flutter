import 'package:http/http.dart' as http;

class WebInterface {
  static WebInterface? _instance;

  static WebInterface get instance {
    if (_instance == null) {
      _instance = new WebInterface();
    }
    return _instance!;
  }

  Future<String> getBook(String book) async {
    return _load(book);
  }

  Future<String> _load(String url) async {
    print(url);
    try {
      Uri uri = Uri.https('raw.githubusercontent.com', "kollinmurphy/scriptures-json/master/$url.json");
      print(uri.toString());
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return "";
      }
    } catch (ex) {
      return "";
    }
  }
}