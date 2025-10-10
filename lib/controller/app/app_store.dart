import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tc_boiler_plate/locale/base_language.dart';
import 'package:tc_boiler_plate/main.dart';
import 'package:tc_boiler_plate/utils/constant.dart';

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
