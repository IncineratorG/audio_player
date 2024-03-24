import 'package:audio_player/services/translation/data/translations/ru.dart';

class TranslationService {
  final Ru _ru = Ru();

  Future<bool> init() {
    return Future.value(true);
  }

  String Function(String pattern) translation() {
    String t(String pattern) {
      return _ru.get(pattern);
    }

    return t;
  }
}