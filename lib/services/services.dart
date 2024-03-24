import 'package:audio_player/services/player/player_service.dart';

class Services {
  static final Services _instance = Services._privateConstructor();

  final _playerService = PlayerService();

  Services._privateConstructor();

  static Services get() {
    return _instance;
  }

  PlayerService get playerService {
    return _playerService;
  }
}