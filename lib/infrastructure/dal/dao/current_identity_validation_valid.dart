import 'package:festou_app/infrastructure/dal/dao/current_identity_validation_result.dart';
import 'package:festou_app/infrastructure/user/dtos/user_dto.dart';

class CurrentIdentityValidationValid extends CurrentIdentityValidationResult {
  const CurrentIdentityValidationValid(this.user);

  final UserDto user;
}
