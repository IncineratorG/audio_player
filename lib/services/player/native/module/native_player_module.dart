import 'package:flutter/services.dart';

class NativePlayerModule {
  static const String MODULE_ID = "PlayerModule";
  static const String MODULE_METHODS_CHANNEL = "NativeModuleMethodsChannel";
  static const String MODULE_EVENTS_CHANNEL = "PlayerModuleEventsChannel";

  final MethodChannel _methodsChannel = const MethodChannel(MODULE_METHODS_CHANNEL);

  NativePlayerModule();

  void init() {
    print("NativePlayerModule->init()");
  }
}