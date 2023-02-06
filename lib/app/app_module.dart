import 'package:flutter_modular/flutter_modular.dart';
import 'package:tbia/app/core/config.dart';
import 'package:tbia/app/domain/services/bostable_bosses/boostable_bosses_service.dart';
import 'package:tbia/app/domain/services/bostable_bosses/i_boostable_bosses_service.dart';
import 'package:tbia/app/domain/services/characters/characters_service.dart';
import 'package:tbia/app/domain/services/characters/i_characters_service.dart';
import 'package:tbia/app/domain/services/creatures/creatures_services.dart';
import 'package:tbia/app/domain/services/creatures/i_creatures_services.dart';
import 'package:tbia/app/domain/services/fansites/fansites_services.dart';
import 'package:tbia/app/domain/services/fansites/i_fansites_services.dart';
import 'package:tbia/app/domain/services/guilds/guilds_service.dart';
import 'package:tbia/app/domain/services/guilds/i_guilds_service.dart';
import 'package:tbia/app/domain/services/highscores/highscores_service.dart';
import 'package:tbia/app/domain/services/highscores/i_highscores_service.dart';
import 'package:tbia/app/domain/services/houses/houses_service.dart';
import 'package:tbia/app/domain/services/houses/i_houses_service.dart';
import 'package:tbia/app/domain/services/kills_statics/i_kill_statistics_api.dart';
import 'package:tbia/app/domain/services/kills_statics/kill_statistics_service.dart';
import 'package:tbia/app/domain/services/news/i_news_service.dart';
import 'package:tbia/app/domain/services/news/news_service.dart';
import 'package:tbia/app/domain/services/spells/i_spells_service.dart';
import 'package:tbia/app/domain/services/spells/spells_service.dart';
import 'package:tbia/app/domain/services/worlds/i_worlds_service.dart';
import 'package:tbia/app/domain/services/worlds/worlds_service.dart';
import 'package:tbia/app/modules/main_tabled/main_tabled_module.dart';
import 'package:tbia/app/modules/splash/splash_module.dart';

import 'core/api_client.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<Settigns>((i) => Settigns()),
    Bind.lazySingleton<ApiClient>((i) {
      return ApiClient(i.get<Settigns>().urlApi);
    }),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute("/", module: SplashModule()),
    ModuleRoute(MainTabledModule.routerName, module: MainTabledModule()),
  ];
}
