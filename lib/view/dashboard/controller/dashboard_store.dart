import 'package:mobx/mobx.dart';

part 'dashboard_store.g.dart';

class DashboardStore = DashboardStoreBase with _$DashboardStore;

abstract class DashboardStoreBase with Store {
  @observable
  int currentIndex = 0;

  @action
  void setCurrentIndex(int val) {
    currentIndex = val;
  }

  @action
  Future<void> dispose() async {
    // Enter the dispose methods
  }
}
