import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tc_boiler_plate/controller/app/app_store.dart';
import 'package:tc_boiler_plate/controller/auth/auth_store.dart';
import 'package:tc_boiler_plate/controller/dashboard/dashboard_store.dart';
import 'package:tc_boiler_plate/locale/applocalizations.dart';
import 'package:tc_boiler_plate/locale/base_language.dart';
import 'package:tc_boiler_plate/utils/colors.dart';
import 'package:tc_boiler_plate/utils/functions.dart';
import 'package:tc_boiler_plate/utils/imports.dart';
import 'package:tc_boiler_plate/view/splash_screen.dart';

//region App languages
Languages? languages;
//endregion

AppStore appStore = AppStore();
DashboardStore dashboardStore = DashboardStore();
AuthStore authStore = AuthStore();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(url: SUPABASE_URL, anonKey: SUPABASE_ANON_KEY);

  await initialize();
  localeLanguageList = languageList();

  appButtonBackgroundColorGlobal = primaryColor;
  defaultAppButtonTextColorGlobal = Colors.white;

  appStore.setLanguage(DEFAULT_LANGUAGE);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return MaterialApp(
          title: APP_NAME,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          navigatorKey: navigatorKey,
          themeMode: appStore.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          home: const SplashScreen(),
          scrollBehavior: SBehavior(),
          supportedLocales: LanguageDataModel.languageLocales(),
          localizationsDelegates: [AppLocalizations(), GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate, GlobalCupertinoLocalizations.delegate],
          localeResolutionCallback: (locale, supportedLocales) => locale,
          locale: Locale(appStore.selectedLanguageCode),
        );
      },
    );
  }
}
