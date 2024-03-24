class PlayerService {
  Future<bool> init() {
    return Future.value(true);
  }

  Future<bool> play() {
    print("PlayerService->play()");
    return Future.value(true);
  }

  Future<bool> pause() {
    print("PlayerService->pause()");
    return Future.value(true);
  }

  Future<bool> example() {
    print("PlayerService->example()");
    return Future.value(true);
  }
}