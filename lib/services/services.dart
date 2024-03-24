import 'package:audio_player/services/player/player_service.dart';
import 'package:audio_player/services/translation/translation_service.dart';

class Services {
  static final Services _instance = Services._privateConstructor();

  final _playerService = PlayerService();
  final _translationService = TranslationService();

  Services._privateConstructor();

  static Services get() {
    return _instance;
  }

  PlayerService get playerService {
    return _playerService;
  }

  TranslationService get translationService {
    return _translationService;
  }
}