import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

class SplashStore = SplashStoreBase with _$SplashStore;

abstract class SplashStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
