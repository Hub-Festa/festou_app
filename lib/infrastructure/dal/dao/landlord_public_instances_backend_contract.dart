import 'package:festou_app/infrastructure/dal/dto/app_data_dto.dart';

abstract class LandlordPublicInstancesBackendContract {
  Future<List<AppDataDTO>> fetchFeaturedInstanceEnvironments({
    required String landlordOrigin,
  });
}
