import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tc_boiler_plate/utils/colors.dart';
import 'package:tc_boiler_plate/utils/constant.dart';
import 'package:tc_boiler_plate/view/auth/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    await 2.seconds.delay;
    SignInScreen().launch(context);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: buttonGradient),
        child: Stack(
          children: [
            /*  Align(
              alignment: Alignment.topRight,
              child: Observer(
                builder: (context) {
                  return Switch(
                    value: appStore.isDarkModeOn,
                    onChanged: (value) {
                      appStore.setDarkModeStatus(value);
                    },
                  );
                },
              ),
            ).paddingTop(context.statusBarHeight),*/
            36.height,
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(APP_NAME, style: boldTextStyle(color: Colors.white, size: 30)),
                Text(TAG_LINE.capitalizeEachWord(), style: secondaryTextStyle(color: Colors.white, size: 14)),
              ],
            ).center(),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: FutureBuilder<PackageInfoData>(
                  future: getPackageInfo(),
                  builder: (context, snap) {
                    String version = snap.hasData ? snap.data!.versionName.validate() : "0.0.0";
                    return Text("v $version", style: secondaryTextStyle(color: Colors.white, size: 12)).center();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
