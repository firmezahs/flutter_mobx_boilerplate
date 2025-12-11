import 'package:blueberry/main.dart';
import 'package:blueberry/utils/constant.dart';
import 'package:blueberry/utils/locale/base_language.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:nb_utils/nb_utils.dart';

part 'app_store.g.dart';

class AppStore = AppStoreBase with _$AppStore;

abstract class AppStoreBase with Store {
  @observable
  bool isDarkModeOn = false;

  @observable
  String selectedLanguageCode = DEFAULT_LANGUAGE;
  @action
  Future<void> setDarkModeStatus(bool value) async {
    isDarkModeOn = value;
  }

  @action
  Future<void> setLanguage(String val, {BuildContext? context}) async {
    selectedLanguageCode = val;

    await setValue(SELECTED_LANGUAGE_CODE, selectedLanguageCode);
    selectedLanguageDataModel = getSelectedLanguageModel();

    if (context != null) languages = Languages.of(context);
  }

  @action
  Future<void> dispose() async {
    // Enter the dispose methods
  }
}
