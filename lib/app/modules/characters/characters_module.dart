import 'package:tbia/app/modules/characters/characters_page.dart';
import 'package:tbia/app/modules/characters/characters_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CharactersModule extends Module {
  static const String routerName = "/character-module";

  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CharactersStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const CharactersPage()),
  ];
}
