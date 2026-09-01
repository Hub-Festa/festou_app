import 'package:festou_app/domain/app_data/app_data.dart';
import 'package:festou_app/infrastructure/dal/dto/app_data_dto.dart';
import 'package:festou_app/infrastructure/platform/app_data_local_info_source/app_data_local_info_dto.dart';

AppData buildAppDataFromInitialization({
  required Object remoteData,
  required Map<String, dynamic> localInfo,
}) {
  return AppDataDTO.fromLegacy(remoteData).toDomain(
    localInfo: AppDataLocalInfoDTO.fromLegacyMap(localInfo),
  );
}
