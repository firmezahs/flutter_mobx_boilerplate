import 'package:blueberry/main.dart';
import 'package:blueberry/utils/extension/context_ext.dart';
import 'package:blueberry/view/setting/languages_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  UniqueKey keyForExperienceWidget = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedScrollView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.network(
                      'https://images.beta.cosmos.so/c147ce0d-f5e6-4624-aeb0-19b1720f9a4c?format=jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Coffeestories',
                  style: boldTextStyle(),
                ),
                Text(
                  'mark.brock@icloud.com',
                  style: secondaryTextStyle(),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(120, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Edit profile',
                    style: primaryTextStyle(),
                  ),
                ),
              ],
            ),
          ).center(),
          16.height,
          Observer(builder: (context) {
            return SettingItemWidget(
              leading: Image.asset("assets/icons/ic_india.png", height: 18, width: 18),
              title: context.translate.appName,
              trailing: Icon(Icons.chevron_right, color: appStore.isDarkModeOn ? white : gray.withOpacity(0.8), size: 24),
              onTap: () {
                LanguagesScreen().launch(context);
              },
            );
          }),
        ],
      ),
    );
  }
}
