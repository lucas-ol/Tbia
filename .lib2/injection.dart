import 'package:tbia/config.dart';
import 'package:tbia/core/api_client.dart';

import './services/boostable_bosses_api.dart';
import './services/characters_api.dart';
import './services/creatures_api.dart';
import './services/fansites_api.dart';
import './services/guilds_api.dart';
import './services/highscores_api.dart';
import './services/houses_api.dart';
import './services/killstatistics_api.dart';
import './services/news_api.dart';
import './services/spells_api.dart';
import './services/worlds_api.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

getServices() {
  final config = Settigns();
  final apiClient = ApiClient(config.urlApi);
  getIt.registerLazySingleton<BoostableBossesApi>(
      () => BoostableBossesApi(apiClient));
  getIt.registerLazySingleton<CharactersApi>(() => CharactersApi(apiClient));
  getIt.registerLazySingleton<CreaturesApi>(() => CreaturesApi(apiClient));
  getIt.registerLazySingleton<FansitesApi>(() => FansitesApi(apiClient));
  getIt.registerLazySingleton<GuildsApi>(() => GuildsApi(apiClient));
  getIt.registerLazySingleton<HighscoresApi>(() => HighscoresApi(apiClient));
  getIt.registerLazySingleton<HousesApi>(() => HousesApi(apiClient));
  getIt.registerLazySingleton<KillstatisticsApi>(
      () => KillstatisticsApi(apiClient));
  getIt.registerLazySingleton<NewsApi>(() => NewsApi(apiClient));
  getIt.registerLazySingleton<SpellsApi>(() => SpellsApi(apiClient));
  getIt.registerLazySingleton<WorldsApi>(() => WorldsApi(apiClient));
}
