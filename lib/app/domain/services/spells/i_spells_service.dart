import 'package:tbia/app/domain/models/main_spell_information_response.dart';
import 'package:tbia/app/domain/models/main_spells_overview_response.dart';

abstract class ISpellsService {
  Future<MainSpellInformationResponse> spellSpellIdGet(String spellId);
  Future<MainSpellsOverviewResponse> spellsGet();
}
