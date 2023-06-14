import 'package:l10n_flutter/l10n_core.dart';

const AppL10nSettings = const L10nSettings(locales: [
  L10nLocale('ru', 'RU', 'Russian, (RU)'),
]);

@AppL10nSettings
class AppL10n {
  static const appTitle = L10nSet('app_title', '<AppTitle>');
  static const searchTabTitle = L10nSet('search_tab_title', '<SearchTabTitle>');
  static const teammatesTabTitle =
      L10nSet('teammates_tab_title', '<TeammatesTabTitle>');
  static const etcTabTitle = L10nSet('etc_tab_title', '<EtcTabTitle>');
  static const aboutUsButton = L10nSet('about_us_button', '<AboutUsButton>');
  static const helpButton = L10nSet('help_button', '<HelpButton>');
  static const searchButton = L10nSet('search_button', '<SearchButton>');
  static const searchButtonDescription =
      L10nSet('search_button_description', '<SearchButtonDescription>');
  static const searchTextFieldHint =
      L10nSet('search_text_field_hint', '<SearchTextFieldHint>');
  static const usernameTextFieldHint =
      L10nSet('username_text_field_hint', '<UserNameTextFieldHint>');
  static const descriptionTextFieldHint =
      L10nSet('description_text_field_hint', '<DescriptionNameTextFieldHint>');
  static const message = L10nSet('message', '<Message>');
  static const hide = L10nSet('hide', '<Hide>');
  // Ваш аккаунт будет отображаться в системе подбора игроков
}
