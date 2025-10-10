import 'package:flutter/material.dart';
import 'package:tc_boiler_plate/view/home/home_screen.dart';
import 'package:tc_boiler_plate/view/orders/order_screen.dart';
import 'package:tc_boiler_plate/view/setting/setting_screen.dart';

class DashboardModel {
  String? screenName;
  Widget? screen;
  int? index;
  DashboardModel({this.screenName, this.screen, this.index});
}

List<DashboardModel> getDashboardValue() {
  return [
    DashboardModel(index: 0, screenName: "Home", screen: HomeScreen()),
    DashboardModel(index: 1, screenName: "Orders", screen: OrderScreen()),
    DashboardModel(index: 2, screenName: "Settings", screen: SettingScreen()),
  ];
}
