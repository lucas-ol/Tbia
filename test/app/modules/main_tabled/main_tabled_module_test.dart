import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tbia/app/modules/main_tabled/main_tabled_module.dart';

void main() {
  setUpAll(() {
    initModule(MainTabledModule());
  });
}
