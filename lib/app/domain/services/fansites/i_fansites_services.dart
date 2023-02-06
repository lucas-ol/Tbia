import 'package:tbia/app/domain/models/main_fansites_response.dart';

abstract class IFansitesService {
  Future<MainFansitesResponse> fansitesGet();
}
