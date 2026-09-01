import 'package:festou_app/domain/value_objects/title_value.dart';

class InvitePartnerNameValue extends TitleValue {
  InvitePartnerNameValue({
    super.defaultValue = '',
    super.isRequired = true,
    super.minLenght = 3,
  });
}
