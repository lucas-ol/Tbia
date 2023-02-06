import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tbia/app/modules/characters/characters_module.dart';

void main() {
  setUpAll(() {
    initModule(CharactersModule());
  });
}
