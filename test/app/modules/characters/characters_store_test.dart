import 'package:flutter_test/flutter_test.dart';
import 'package:tbia/app/modules/characters/characters_store.dart';
 
void main() {
  late CharactersStore store;

  setUpAll(() {
    store = CharactersStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}