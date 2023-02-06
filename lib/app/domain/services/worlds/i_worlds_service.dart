import 'package:tbia/app/domain/models/main_world_response.dart';

abstract class IWorldsService {
  Future<MainWorldResponse> worldNameGet(String name);
}
