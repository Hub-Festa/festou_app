import 'package:festou_app/domain/value_objects/title_value.dart';

class ArtistNameValue extends TitleValue {
  ArtistNameValue({
    super.defaultValue = '',
    super.isRequired = true,
    super.minLenght = 2,
  });
}
