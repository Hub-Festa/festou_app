import 'package:festou_app/infrastructure/dal/dto/app_data_dto.dart';

abstract class AppDataBackendContract {
  Future<AppDataDTO> fetch();
}
