import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tc_boiler_plate/main.dart';
import 'package:tc_boiler_plate/model/dashboard_model.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  List<DashboardModel> dashboardList = getDashboardValue();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          appBar: appBarWidget(dashboardList[dashboardStore.currentIndex].screenName.validate(), showBack: false, center: true),
          body: dashboardList[dashboardStore.currentIndex].screen.validate(),
          bottomNavigationBar: NavigationBar(
            selectedIndex: dashboardStore.currentIndex,
            onDestinationSelected: dashboardStore.setCurrentIndex,
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.bookmark_border), label: "Orders"),
              NavigationDestination(icon: Icon(Icons.settings), label: "Settings", enabled: true),
            ],
          ),
        );
      },
    );
  }
}
