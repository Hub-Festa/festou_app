import 'package:festou_app/infrastructure/dal/dto/proximity_preference_dto.dart';

abstract class ProximityPreferencesBackendContract {
  Future<ProximityPreferenceDTO?> fetch();

  Future<ProximityPreferenceDTO> upsert(ProximityPreferenceDTO preference);
}
