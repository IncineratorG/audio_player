class Ru {
  final _translationMap = {
    "AppDrawer_title": "Настройки",
    "AppDrawer_selectFolder": "Выбрать папку",

    "MainScreen_defaultTitle": "Ничего не выбрано",
  };

  String get(String pattern) {
    return _translationMap[pattern] ?? "";
  }
}