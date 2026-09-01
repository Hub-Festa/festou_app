import 'package:festou_app/domain/map/city_poi_model.dart';
import 'package:festou_app/domain/map/events/poi_update_event.dart';
import 'package:festou_app/domain/map/filters/poi_filter_options.dart';
import 'package:festou_app/domain/map/map_region_definition.dart';
import 'package:festou_app/domain/map/queries/poi_query.dart';
import 'package:festou_app/domain/map/value_objects/city_coordinate.dart';
import 'package:festou_app/domain/map/value_objects/poi_reference_id_value.dart';
import 'package:festou_app/domain/map/value_objects/poi_reference_type_value.dart';
import 'package:festou_app/domain/map/value_objects/poi_stack_key_value.dart';
import 'package:festou_app/domain/value_objects/thumb_uri_value.dart';

abstract class CityMapRepositoryContract {
  Future<List<CityPoiModel>> fetchPoints(PoiQuery query);

  Future<List<CityPoiModel>> fetchStackItems({
    required PoiQuery query,
    required PoiStackKeyValue stackKey,
  });

  Future<CityPoiModel?> fetchPoiByReference({
    required PoiReferenceTypeValue refType,
    required PoiReferenceIdValue refId,
  });

  Future<PoiFilterOptions> fetchFilters(PoiQuery query);

  Future<List<MapRegionDefinition>> fetchRegions();

  Future<ThumbUriValue> fetchFallbackEventImage();

  Stream<PoiUpdateEvent?> get poiEvents;

  CityCoordinate defaultCenter();

  void dispose();
}
