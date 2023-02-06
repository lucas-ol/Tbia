import 'package:mobx/mobx.dart';

part 'characters_store.g.dart';

class CharactersStore = CharactersStoreBase with _$CharactersStore;

abstract class CharactersStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
