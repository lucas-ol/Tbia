import 'package:tbia/app/domain/models/main_highscores_response.dart';

abstract class IHighscoresService {
  Future<MainHighscoresResponse> highscoresWorldCategoryVocationPageGet(
      String world, String category, String vocation, int page);
}
