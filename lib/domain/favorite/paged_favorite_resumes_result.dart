import 'package:festou_app/domain/favorite/projections/favorite_resume.dart';
import 'package:festou_app/domain/value_objects/domain_boolean_value.dart';

class PagedFavoriteResumesResult {
  PagedFavoriteResumesResult({
    required this.items,
    required this.hasMoreValue,
  });

  final List<FavoriteResume> items;
  final DomainBooleanValue hasMoreValue;

  bool get hasMore => hasMoreValue.value;
}
