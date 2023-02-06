import 'package:tbia/app/domain/models/main_kill_statistics_response.dart';

abstract class IKillstatisticsService {
  Future<MainKillStatisticsResponse> v3KillstatisticsWorldGet(String world);
}
