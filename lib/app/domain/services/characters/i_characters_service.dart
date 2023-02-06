import 'package:tbia/app/domain/models/main_character_response.dart';

abstract class ICharactersService {
  Future<MainCharacterResponse> characterNameGet(String name);
}
