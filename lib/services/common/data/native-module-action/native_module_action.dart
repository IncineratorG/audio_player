class NativeModuleAction {
  static const MODULE_ID_FIELD = "moduleId";
  static const ACTION_TYPE_FIELD = "type";
  static const PAYLOAD_FIELD = "payload";

  final String _moduleId;
  final String _type;
  final Map<String, Object> _payload;

  NativeModuleAction({
    required String moduleId,
    required String type,
    Map<String, Object> payload = const {}
  }): _moduleId = moduleId,
      _type = type,
      _payload = payload;

  Map<String, Object> build() {
    Map<String, Object> action = {
      MODULE_ID_FIELD: _moduleId,
      ACTION_TYPE_FIELD: _type,
      PAYLOAD_FIELD: _payload,
    };
    return action;
  }
}