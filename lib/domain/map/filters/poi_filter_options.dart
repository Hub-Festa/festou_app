import 'package:festou_app/domain/map/filters/poi_filter_category.dart';

export 'package:festou_app/domain/map/filters/poi_filter_category.dart';
export 'package:festou_app/domain/map/filters/poi_filter_marker_override.dart';
export 'package:festou_app/domain/map/filters/poi_filter_server_query.dart';

class PoiFilterOptions {
  PoiFilterOptions({
    required this.categories,
  });

  final List<PoiFilterCategory> categories;

  List<PoiFilterCategory> get sortedCategories =>
      List<PoiFilterCategory>.from(categories);
}
