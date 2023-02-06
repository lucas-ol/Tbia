import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:tbia/app/modules/main_tabled/home/home_module.dart';
import 'package:tbia/app/modules/main_tabled/main_tabled_module.dart';

part 'main_tabled_store.g.dart';

class MainTabledStore = MainTabledStoreBase with _$MainTabledStore;

abstract class MainTabledStoreBase with Store {
  @observable
  int currentIndex = 0;

  @action
  void changePageIndex(int index) {
    currentIndex = index;
    navigatePage(page: TabbledPages.values[index]);
  }

  @action
  Future<dynamic> pushPage({
    required TabbledPages page,
    String route = "/",
    dynamic args,
  }) {
    final String routeName = getPage(page, route);
    return Modular.to.pushNamed(routeName, arguments: args);
  }

  @action
  void navigatePage({
    required TabbledPages page,
    String route = "/",
    dynamic args,
  }) {
    final String routeName = getPage(page, route);
    Modular.to.navigate(routeName, arguments: args);
  }

  String getPage(TabbledPages page, String route) {
    String routePage = "";

    switch (page) {
      case TabbledPages.home:
        routePage = MainTabledModule.routerName + HomeModule.routerName;
        break;
      default:
        routePage = MainTabledModule.routerName + HomeModule.routerName;
        break;
    }
    return routePage;
  }
}

enum TabbledPages { home, news }
