import 'data/CanonFactory.dart';

class SplashPresenter {
  String message = "Initializing scriptures...\nThis may take a while.";

  Future<bool> init() async {
    await CanonFactory.getInstance().makeCanon(this);
    return true;
  }

  static SplashPresenter? _instance;
  static SplashPresenter get instance {
    if (_instance == null) {
      _instance = new SplashPresenter();
    }
    return _instance!;
  }
}