import 'package:l10n_flutter/l10n_core.dart';

const AppL10nSettings = const L10nSettings(locales: [
  L10nLocale('ru', 'RU', 'Russian, (RU)'),
]);

@AppL10nSettings
class AppL10n {
  static const appTitle = L10nSet('app_title', 'appTitle');
  static const searchTabTitle = L10nSet('search_tab_title', 'searchTabTitle');
  static const teammatesTabTitle = L10nSet('teammates_tab_title', 'teammatesTabTitle');
  static const etcTabTitle = L10nSet('etc_tab_title', 'etcTabTitle');
}