import 'package:festou_app/domain/app_data/location_origin_settings.dart';
import 'package:festou_app/domain/map/value_objects/city_coordinate.dart';
import 'package:festou_app/domain/map/value_objects/distance_in_meters_value.dart';

class LocationOriginResolution {
  const LocationOriginResolution({
    required this.settings,
    required this.effectiveCoordinate,
    required this.liveUserCoordinate,
    required this.tenantDefaultCoordinate,
    required this.userFixedCoordinate,
    required this.distanceFromTenantDefaultOriginValue,
  });

  final LocationOriginSettings? settings;
  final CityCoordinate? effectiveCoordinate;
  final CityCoordinate? liveUserCoordinate;
  final CityCoordinate? tenantDefaultCoordinate;
  final CityCoordinate? userFixedCoordinate;
  final DistanceInMetersValue? distanceFromTenantDefaultOriginValue;

  bool get hasEffectiveCoordinate => effectiveCoordinate != null;
  double? get distanceFromTenantDefaultOriginMeters =>
      distanceFromTenantDefaultOriginValue?.value;
}
