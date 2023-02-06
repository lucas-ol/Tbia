import 'package:tbia/app/modules/characters/characters_module.dart';
import 'package:tbia/app/modules/main_tabled/home/home_module.dart';
import 'package:tbia/app/modules/main_tabled/main_tabled_page.dart';
import 'package:tbia/app/modules/main_tabled/main_tabled_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MainTabledModule extends Module {
  static const String routerName = "/main-tabbled-module";
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MainTabledStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const MainTabledPage(), children: [
      ModuleRoute(HomeModule.routerName, module: HomeModule()),
      ModuleRoute(
        CharactersModule.routerName,
        module: CharactersModule(),
      ),
    ]),
  ];
}
