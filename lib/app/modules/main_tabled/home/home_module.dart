import 'package:flutter_modular/flutter_modular.dart';
import 'package:tbia/app/domain/services/news/i_news_service.dart';
import 'package:tbia/app/domain/services/news/news_service.dart';
import 'home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  static const String routerName = "/home-module";

  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton<INewsService>((i) => NewsService(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
  ];
}
