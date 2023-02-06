import 'package:tbia/app/domain/models/main_guild_response.dart';
import 'package:tbia/app/domain/models/main_guilds_overview_response.dart';

abstract class IGuildsService {
  Future<MainGuildResponse> guildNameGet(String name);
  Future<MainGuildsOverviewResponse> guildsWorldGet(String world);
}
